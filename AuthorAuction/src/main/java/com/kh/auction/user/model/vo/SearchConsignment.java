package com.kh.auction.user.model.vo;

public class SearchConsignment {
	
	private String select;
	private String keyword;
	private String strDate;
	private String EndDate;
	private String status;
	
	public SearchConsignment() {}

	

	
	public SearchConsignment(String select, String keyword, String strDate, String endDate, String status) {
		super();
		this.select = select;
		this.keyword = keyword;
		this.strDate = strDate;
		EndDate = endDate;
		this.status = status;
	}




	public String getSelect() {
		return select;
	}




	public void setSelect(String select) {
		this.select = select;
	}




	public String getKeyword() {
		return keyword;
	}




	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}




	public String getStrDate() {
		return strDate;
	}




	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}




	public String getEndDate() {
		return EndDate;
	}




	public void setEndDate(String endDate) {
		EndDate = endDate;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public void convertEmptyToNull() {
	      if ("".equals(this.select)) {
	         this.select = null;
	      }

	      if ("".equals(this.keyword)) {
	         this.keyword = null;
	      }

	      if ("".equals(this.strDate)) {
	         this.strDate = null;
	      }

	      if ("".equals(this.EndDate)) {
	         this.EndDate = null;
	      }
	      
	      if ("".equals(this.status)) {
	         this.status = null;
	      }
	   }
	
	
	
	@Override
	public String toString() {
		return "SearchConsignment [select=" + select + ", keyword=" + keyword + ", strDate=" + strDate + ", EndDate="
				+ EndDate + ", status=" + status + "]";
	}
	
	
}