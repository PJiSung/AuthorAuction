package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.user.model.vo.Auction;

public interface AuctionService {

	//진행중인 경매를 가지고옴 - 재활용해 총 갯수/페이징에도 사용
	ArrayList<Auction> getAllAuction();

	//경매 번호로 해당 경매정보 가지고 옴
	Auction getAuctionDetail(int aucNo);

	//hashmap을 이용해 진행여부, 내용에 대한 경매들을 들고옴
	ArrayList<Auction> getAdminSearchList(HashMap<String, String> hm);

	//입찰 - ajax 이용한 입찰 + insert all을 이용해서 입찰내역 및 경매의 내용 변경
	int insertBid(HashMap<String, Object> hm);

}
