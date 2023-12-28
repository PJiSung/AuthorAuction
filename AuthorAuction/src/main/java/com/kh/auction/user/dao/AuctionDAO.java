package com.kh.auction.user.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.kh.auction.user.model.vo.Auction;

@Mapper 
public interface AuctionDAO {
	
	//진행중인 경매를 가지고옴
	ArrayList<Auction> getAllAuction();

	//경매 번호로 경매 세부내용을 들고옴
	Auction getAuctionDetail(int aucNo);

	//hashmap을 이용해 진행여부, 내용에 대한 경매들을 들고옴
	ArrayList<Auction> getAdminSearchList(HashMap<String, String> hm);

	//입찰 - ajax 이용한 입찰 + insert all을 이용해서 입찰내역 및 경매의 내용 변경
	int insertBid(HashMap<String, Object> hm);

	//입찰 성공시에 입찰내역 업데이트
	int insertBiddingDetail(HashMap<String, Object> hm);

	int updateMoneyInsertBid(HashMap<String, Object> hm);

	int updateMoneyUnsold(HashMap<String, Object> hm);
	
}
