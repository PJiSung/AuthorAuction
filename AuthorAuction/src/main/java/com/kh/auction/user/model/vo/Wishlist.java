package com.kh.auction.user.model.vo;

public class Wishlist {

	
	private int memId;
	private int proNo;
	private int wisAmount;
	
	public Wishlist() {}

	public Wishlist(int memId, int proNo, int wisAmount) {
		super();
		this.memId = memId;
		this.proNo = proNo;
		this.wisAmount = wisAmount;
	}

	public int getMemId() {
		return memId;
	}

	public void setMemId(int memId) {
		this.memId = memId;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public int getWisAmount() {
		return wisAmount;
	}

	public void setWisAmount(int wisAmount) {
		this.wisAmount = wisAmount;
	}

	@Override
	public String toString() {
		return "Wishlist [memId=" + memId + ", proNo=" + proNo + ", wisAmount=" + wisAmount + "]";
	}

	
	
}
