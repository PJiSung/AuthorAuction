package com.kh.auction.user.model.vo;

import java.sql.Date;

public class Reply {
	
	private int repNo;
	private String repContent;
	private Date repCreateDate;
	private Date repModifyDate;
	private String repStatus;
	private String repWriter;
	private String memNickName;
	private String memFileName;
	
	public Reply() {}

	public Reply(int repNo, String repContent, Date repCreateDate, Date repModifyDate, String repStatus,
			String repWriter) {
		super();
		this.repNo = repNo;
		this.repContent = repContent;
		this.repCreateDate = repCreateDate;
		this.repModifyDate = repModifyDate;
		this.repStatus = repStatus;
		this.repWriter = repWriter;
	}

	public int getRepNo() {
		return repNo;
	}

	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}

	public String getRepContent() {
		return repContent;
	}

	public void setRepContent(String repContent) {
		this.repContent = repContent;
	}

	public Date getRepCreateDate() {
		return repCreateDate;
	}

	public void setRepCreateDate(Date repCreateDate) {
		this.repCreateDate = repCreateDate;
	}

	public Date getRepModifyDate() {
		return repModifyDate;
	}

	public void setRepModifyDate(Date repModifyDate) {
		this.repModifyDate = repModifyDate;
	}

	public String getRepStatus() {
		return repStatus;
	}

	public void setRepStatus(String repStatus) {
		this.repStatus = repStatus;
	}

	public String getRepWriter() {
		return repWriter;
	}

	public void setRepWriter(String repWriter) {
		this.repWriter = repWriter;
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
		return "Reply [repNo=" + repNo + ", repContent=" + repContent + ", repCreateDate=" + repCreateDate
				+ ", repModifyDate=" + repModifyDate + ", repStatus=" + repStatus + ", repWriter=" + repWriter
				+ ", memNickName=" + memNickName + ", memFileName=" + memFileName + "]";
	}
	
}
