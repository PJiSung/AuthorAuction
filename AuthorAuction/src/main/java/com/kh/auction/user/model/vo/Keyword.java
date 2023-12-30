package com.kh.auction.user.model.vo;

public class Keyword {

	private String keyword;
	private int minPrice;
	private int maxPrice;
	private String material;
	private int height;
	private int width;
	private int deliveryFee;
	
	public Keyword() {}

	public Keyword(String keyword, int minPrice, int maxPrice, String material, int height, int width,
			int deliveryFee) {
		super();
		this.keyword = keyword;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
		this.material = material;
		this.height = height;
		this.width = width;
		this.deliveryFee = deliveryFee;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	@Override
	public String toString() {
		return "Keyword [keyword=" + keyword + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice + ", material="
				+ material + ", height=" + height + ", width=" + width + ", deliveryFee=" + deliveryFee + "]";
	}
	
	
	
	
}
