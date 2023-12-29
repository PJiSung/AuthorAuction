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

	
	
	
	
	//입찰 - ajax  경매금액 업데이트
	int insertBid(HashMap<String, Object> hm);

	//유찰된 금액 환불
	void returnUnsold(HashMap<String, Object> hm);
	
	//입찰성공시에 금액 감소
	void updateMoneyInsertBid(HashMap<String, Object> hm);

	//입찰 성공시에 입찰내역 업데이트
	void insertBiddingDetail(HashMap<String, Object> hm);
	
	//상세페이지 이동시 관심 목록 여부 확인
	int likeCheck(HashMap<String, Object> hm);

	//관심 목록 등록
	int insertLike(HashMap<String, Object> hm);

	//관심 목록 삭제
	int deleteLike(HashMap<String, Object> hm);
}
