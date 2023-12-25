package com.kh.auction.inquiry.handler;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.auction.user.model.vo.ChatMessage;
import com.kh.auction.user.model.vo.Inquiry;
import com.kh.auction.user.service.InquiryService;

@Component
public class SocketHandler extends TextWebSocketHandler {
	
	@Autowired
	InquiryService iService;

	private List<HashMap<String, Object>> rls = new ArrayList<>();
	private ArrayList<ChatMessage> cList = new ArrayList<>();

	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception { // 메시지 발송
		String msg = message.getPayload();
		String url = session.getUri().toString();
		JSONObject obj = jsonToObjectParser(msg);
		String objMsg = (String) obj.get("msg");
		String id = (String) obj.get("userName");
		String rN = (String) obj.get("roomNumber");
		String isAdmin = (String) obj.get("isAdmin");
		boolean checkClist = false;
		int index = 0;

		if (!cList.isEmpty()) {
			for (int i = 0; i < cList.size(); i++) {
				if (cList.get(i).getRoomNum().equals(rN)) {
					index = i;
					checkClist = true;
					break;
				}
			}
		}
		ChatMessage cm = new ChatMessage();
		if (!checkClist) {
			if(isAdmin.equals("N")) {
				cm.setCustomerId(id);
			}
			cm.setContent("[" + id + "] " + objMsg + "\n");
			cm.setRoomNum(rN);
			cList.add(cm);
		} else {
			if(cList.get(index).getCustomerId() == null) {
				if(isAdmin.equals("N")) {
					cList.get(index).setCustomerId(id);
				}
			}
			String content = cList.get(index).getContent();
			cList.get(index).setContent(content + "[" + id + "] " + objMsg + "\n");
		}

		HashMap<String, Object> temp = new HashMap<>();
		if (rls.size() > 0) {
			for (int i = 0; i < rls.size(); i++) {
				String roomNumber = (String) rls.get(i).get("roomNumber");
				if (roomNumber.equals(rN)) {
					temp = rls.get(i);
					break;
				}
			}
			for (String k : temp.keySet()) {
				if (k.equals("roomNumber")) {
					continue;
				}
				WebSocketSession wss = (WebSocketSession) temp.get(k);
				if (wss != null) {
					try {
						wss.sendMessage(new TextMessage(obj.toString()));
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		boolean flag = false;
		boolean checkRoom = false;
		String url = session.getUri().toString();
		String roomNumber = (url.split("/chating/")[1]).split("/isAdmin/")[0];
		String isAdmin = url.split("/isAdmin/")[1];
		int idx = rls.size();

		// 해당 방에 현재 접속 중인 세션 목록
		List<WebSocketSession> roomSessions = rls
				.stream().filter(map -> map.get("roomNumber").equals(roomNumber)).flatMap(map -> map.values().stream()
						.filter(value -> value instanceof WebSocketSession).map(value -> (WebSocketSession) value))
				.collect(Collectors.toList());

		if (rls.size() > 0) {
			for (int i = 0; i < rls.size(); i++) {
				String rN = (String) rls.get(i).get("roomNumber");
				if (rN.equals(roomNumber)) {
					flag = true;
					idx = i;
					break;
				}
			}
		}
		if (roomSessions.size() == 0 || (roomSessions.size() == 1 && isAdmin.equals("Y"))) {
			if (flag) {
				HashMap<String, Object> map = rls.get(idx);
				map.put(session.getId(), session);
			} else {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("roomNumber", roomNumber);
				map.put(session.getId(), session);
				rls.add(map);
			}
			notifySessionCount(roomNumber, roomSessions.size());
			notifyAllAdmins("고객 상담요청이 있습니다.");
		} else if (roomSessions.size() == 1 && isAdmin.equals("N")) {
			checkRoom = true;
		} else { // 2명이상일때
			checkRoom = true;
		}
		JSONObject obj = new JSONObject();
		if (checkRoom) {
			obj.put("type", "newRoom");
		} else {
			obj.put("type", "getId");
		}
		obj.put("sessionId", session.getId());
		session.sendMessage(new TextMessage(obj.toString()));
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception { // 소켓 종료
		int index = 0;
		String url = session.getUri().toString();
		String roomNumber = (url.split("/chating/")[1]).split("/isAdmin/")[0]; // 방번호 체크
		if (rls.size() > 0) {
			for (int i = 0; i < rls.size(); i++) {
				rls.get(i).remove(session.getId());
			}
			for(int i=0; i<cList.size(); i++) {
				if(cList.get(i).getRoomNum().equals(roomNumber)) {
					index = i;
					break;
				}
			}
			if (index >= 0 && index < cList.size()) {
				notifyRoomAboutExit(roomNumber, "상담이 종료되었습니다.");
				if(cList.get(index).getContent() != null) {
					createFile(session.getId(), cList.get(index).getContent(), cList.get(index).getCustomerId());
				}
				cList.remove(index);
			}
		}

		super.afterConnectionClosed(session, status);
	}

	private void notifyRoomAboutExit(String roomNumber, String msg) {
		List<WebSocketSession> roomSessions = rls
				.stream().filter(map -> map.get("roomNumber").equals(roomNumber)).flatMap(map -> map.values().stream()
						.filter(value -> value instanceof WebSocketSession).map(value -> (WebSocketSession) value))
				.collect(Collectors.toList());

		for (WebSocketSession roomSession : roomSessions) {
			JSONObject notification = new JSONObject();
			notification.put("type", "exit");
			notification.put("msg", msg);

			try {
				roomSession.sendMessage(new TextMessage(notification.toString()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void createFile(String sessionid, String content, String customerId) {
		String root = "D:\\";
		String savePath = root + "\\logs\\inquiry";
		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdir();
		}
		String fileName = "chat-" + sessionid + ".log";
		String fullPath = savePath + "\\" + fileName;
		File file = new File(fullPath);
		try (BufferedWriter writer = new BufferedWriter(new FileWriter(file, false))) {
			writer.write(content);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		insertInquiry(customerId, fileName);
	}

	private void insertInquiry(String customerId, String fileName) {
		Inquiry inq = new Inquiry();
		inq.setInqFileName(fileName);
		inq.setMemId(customerId);
		iService.insertInquiry(inq);
	}

	private static JSONObject jsonToObjectParser(String jsonStr) {
		JSONObject obj = null;
		try {
			obj = new JSONObject(jsonStr);
		} catch (org.json.JSONException e) {
			e.printStackTrace();
		}
		return obj;
	}

	private void notifySessionCount(String roomNumber, int sessionCount) {
		List<WebSocketSession> roomSessions = rls
				.stream().filter(map -> map.get("roomNumber").equals(roomNumber)).flatMap(map -> map.values().stream()
						.filter(value -> value instanceof WebSocketSession).map(value -> (WebSocketSession) value))
				.collect(Collectors.toList());

		for (WebSocketSession roomSession : roomSessions) {
			JSONObject notification = new JSONObject();
			notification.put("type", "sessionCount");
			notification.put("sessionCount", sessionCount);

			try {
				roomSession.sendMessage(new TextMessage(notification.toString()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void notifyAllAdmins(String message) {
		List<WebSocketSession> adminSessions = rls.stream().flatMap(map -> map.values().stream()
				.filter(value -> value instanceof WebSocketSession).map(value -> (WebSocketSession) value))
				.collect(Collectors.toList());

		for (WebSocketSession adminSession : adminSessions) {
			JSONObject notification = new JSONObject();
			notification.put("type", "notification");
			notification.put("message", message);

			try {
				adminSession.sendMessage(new TextMessage(notification.toString()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
