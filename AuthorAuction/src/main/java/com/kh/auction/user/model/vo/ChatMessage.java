package com.kh.auction.user.model.vo;

public class ChatMessage {
	private String customerId;
	private String content;
	private String roomNum;
	
	public ChatMessage() {}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

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

	public ChatMessage(String customerId, String content, String roomNum) {
		super();
		this.customerId = customerId;
		this.content = content;
		this.roomNum = roomNum;
	}

	@Override
	public String toString() {
		return "ChatMessage [customerId=" + customerId + ", content=" + content + ", roomNum=" + roomNum + "]";
	}
	
	
}
