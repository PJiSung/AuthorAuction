package com.kh.auction.user.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper 
public interface AuctionDAO {
	
	//진행중인 경매의 총 갯수를 가지고옴
	int getCountAuctionNum();
	
	
}
