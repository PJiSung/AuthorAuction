package com.kh.auction.user.model.vo;

import java.sql.Date;

public class Recommendation {
	
	private int recNo;
	private String recTitle;
	private String recContent;
	private String recStyle;
	private String recStatus;
	private String recReply;
	private String recAttachment;
	private Date recRepDate;
	private Date recCreateDate;
	private String memId;
	private String memName;
	
	public Recommendation() {}

	public int getRecNo() {
		return recNo;
	}

	public void setRecNo(int recNo) {
		this.recNo = recNo;
	}

	public String getRecTitle() {
		return recTitle;
	}

	public void setRecTitle(String recTitle) {
		this.recTitle = recTitle;
	}

	public String getRecContent() {
		return recContent;
	}

	public void setRecContent(String recContent) {
		this.recContent = recContent;
	}

	public String getRecStyle() {
		return recStyle;
	}

	public void setRecStyle(String recStyle) {
		this.recStyle = recStyle;
	}

	public String getRecStatus() {
		return recStatus;
	}

	public void setRecStatus(String recStatus) {
		this.recStatus = recStatus;
	}

	public String getRecReply() {
		return recReply;
	}

	public void setRecReply(String recReply) {
		this.recReply = recReply;
	}

	public String getRecAttachment() {
		return recAttachment;
	}

	public void setRecAttachment(String recAttachment) {
		this.recAttachment = recAttachment;
	}

	public Date getRecRepDate() {
		return recRepDate;
	}

	public void setRecRepDate(Date recRepDate) {
		this.recRepDate = recRepDate;
	}

	public Date getRecCreateDate() {
		return recCreateDate;
	}

	public void setRecCreateDate(Date recCreateDate) {
		this.recCreateDate = recCreateDate;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public Recommendation(int recNo, String recTitle, String recContent, String recStyle, String recStatus,
			String recReply, String recAttachment, Date recRepDate, Date recCreateDate, String memId) {
		super();
		this.recNo = recNo;
		this.recTitle = recTitle;
		this.recContent = recContent;
		this.recStyle = recStyle;
		this.recStatus = recStatus;
		this.recReply = recReply;
		this.recAttachment = recAttachment;
		this.recRepDate = recRepDate;
		this.recCreateDate = recCreateDate;
		this.memId = memId;
	}
          
	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	@Override
	public String toString() {
		return "Recommendation [recNo=" + recNo + ", recTitle=" + recTitle + ", recContent=" + recContent
				+ ", recStyle=" + recStyle + ", recStatus=" + recStatus + ", recReply=" + recReply + ", recAttachment="
				+ recAttachment + ", recRepDate=" + recRepDate + ", recCreateDate=" + recCreateDate + ", memId=" + memId
				+ ", memName=" + memName + "]";
	}
	     
	
	
}
