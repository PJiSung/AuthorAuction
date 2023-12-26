package com.kh.auction.user.service;

import java.util.ArrayList;

import com.kh.auction.user.model.vo.Auction;

public interface AuctionService {

	//진행중인 경매를 가지고옴 - 재활용해 총 갯수/페이징에도 사용
	ArrayList<Auction> getAllAuction();

	//경매 번호로 해당 경매정보 가지고 옴
	Auction getAuctionDetail(int aucNo);

}
