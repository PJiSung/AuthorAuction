package com.kh.auction.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.kh.auction.user.model.vo.Auction;

@Mapper 
public interface AuctionDAO {
	
	//진행중인 경매를 가지고옴
	ArrayList<Auction> getAllAuction();

	//경매 번호로 경매 세부내용을 들고옴
	Auction getAuctionDetail(int aucNo);
	
	
}
