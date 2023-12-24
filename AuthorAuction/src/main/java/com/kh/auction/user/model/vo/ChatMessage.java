package com.kh.auction.user.model.vo;

public class ChatMessage {
	private String content;
	private String roomNum;
	
	public ChatMessage() {}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}

	@Override
	public String toString() {
		return "ChatMessage [content=" + content + ", roomNum=" + roomNum + "]";
	}

	public ChatMessage(String content, String roomNum) {
		super();
		this.content = content;
		this.roomNum = roomNum;
	}
	
}
