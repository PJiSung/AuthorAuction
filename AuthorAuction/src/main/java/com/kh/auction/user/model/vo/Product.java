package com.kh.auction.user.model.vo;


public class Product {
	
	private int proNo;
	private String proName;
	private String proWriter;
	private String proMaterial;
	private int proHeight;
	private int proWidth;
	private int proDate;
	private String proImage;
	private int proPrice;
	private int proAmount;
	
	public Product(){}

	public Product(int proNo, String proName, String proWriter, String proMaterial, int proHeight, int proWidth,
			int proDate, String proImage, int proPrice, int proAmount) {
		super();
		this.proNo = proNo;
		this.proName = proName;
		this.proWriter = proWriter;
		this.proMaterial = proMaterial;
		this.proHeight = proHeight;
		this.proWidth = proWidth;
		this.proDate = proDate;
		this.proImage = proImage;
		this.proPrice = proPrice;
		this.proAmount = proAmount;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProWriter() {
		return proWriter;
	}

	public void setProWriter(String proWriter) {
		this.proWriter = proWriter;
	}

	public String getProMaterial() {
		return proMaterial;
	}

	public void setProMaterial(String proMaterial) {
		this.proMaterial = proMaterial;
	}

	public int getProHeight() {
		return proHeight;
	}

	public void setProHeight(int proHeight) {
		this.proHeight = proHeight;
	}

	public int getProWidth() {
		return proWidth;
	}

	public void setProWidth(int proWidth) {
		this.proWidth = proWidth;
	}

	public int getProDate() {
		return proDate;
	}

	public void setProDate(int proDate) {
		this.proDate = proDate;
	}

	public String getProImage() {
		return proImage;
	}

	public void setProImage(String proImage) {
		this.proImage = proImage;
	}

	public int getProPrice() {
		return proPrice;
	}

	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}

	public int getProAmount() {
		return proAmount;
	}

	public void setProAmount(int proAmount) {
		this.proAmount = proAmount;
	}

	@Override
	public String toString() {
		return "Product [proNo=" + proNo + ", proName=" + proName + ", proWriter=" + proWriter + ", proMaterial="
				+ proMaterial + ", proHeight=" + proHeight + ", proWidth=" + proWidth + ", proDate=" + proDate
				+ ", proImage=" + proImage + ", proPrice=" + proPrice + ", proAmount=" + proAmount + "]";
	}

	
	
}
