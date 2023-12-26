package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.AuctionDAO;
import com.kh.auction.user.model.vo.Auction;

@Service
public class AuctionServiceImpl implements AuctionService{
	
	@Autowired
	private AuctionDAO aDAO;
	
	@Override //진행중인 경매를 가지고옴
	public ArrayList<Auction> getAllAuction() {
		return aDAO.getAllAuction();
	}

	@Override //경매 번호로 경매 세부내용을 들고옴
	public Auction getAuctionDetail(int aucNo) {
		return aDAO.getAuctionDetail(aucNo);
	}

	@Override //hashmap을 이용해 진행여부, 내용에 대한 경매들을 들고옴
	public ArrayList<Auction> getAdminSearchList(HashMap<String, String> hm) {
		return aDAO.getAdminSearchList(hm);
	}

}
