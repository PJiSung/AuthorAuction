package com.kh.auction.user.model.vo;

import java.sql.Date;

public class Review {
	private int revNo;
	private String revContent;
	private int revCount;
	private Date revCreateDate;
	private Date revModifyDate;
	private String revStatus;
	private String revWriter;
	private String memNickName;
	private String memFileName;
	
	public Review() {}
	public Review(int revNo, String revContent, int revCount, Date revCreateDate, Date revModifyDate, String revStatus,
			String revWriter, String memNickName, String memFileName) {
		super();
		this.revNo = revNo;
		this.revContent = revContent;
		this.revCount = revCount;
		this.revCreateDate = revCreateDate;
		this.revModifyDate = revModifyDate;
		this.revStatus = revStatus;
		this.revWriter = revWriter;
		this.memNickName = memNickName;
		this.memFileName = memFileName;
	}
	public int getRevNo() {
		return revNo;
	}
	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}
	public String getRevContent() {
		return revContent;
	}
	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}
	public int getRevCount() {
		return revCount;
	}
	public void setRevCount(int revCount) {
		this.revCount = revCount;
	}
	public Date getRevCreateDate() {
		return revCreateDate;
	}
	public void setRevCreateDate(Date revCreateDate) {
		this.revCreateDate = revCreateDate;
	}
	public Date getRevModifyDate() {
		return revModifyDate;
	}
	public void setRevModifyDate(Date revModifyDate) {
		this.revModifyDate = revModifyDate;
	}
	public String getRevStatus() {
		return revStatus;
	}
	public void setRevStatus(String revStatus) {
		this.revStatus = revStatus;
	}
	public String getRevWriter() {
		return revWriter;
	}
	public void setRevWriter(String revWriter) {
		this.revWriter = revWriter;
	}
	public String getMemNickName() {
		return memNickName;
	}
	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}
	public String getMemFileName() {
		return memFileName;
	}
	public void setMemFileName(String memFileName) {
		this.memFileName = memFileName;
	}
	@Override
	public String toString() {
		return "Review [revNo=" + revNo + ", revContent=" + revContent + ", revCount=" + revCount + ", revCreateDate="
				+ revCreateDate + ", revModifyDate=" + revModifyDate + ", revStatus=" + revStatus + ", revWriter="
				+ revWriter + ", memNickName=" + memNickName + ", memFileName=" + memFileName + "]";
	}
	
}
