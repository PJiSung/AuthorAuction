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
	
	
	
	
}
