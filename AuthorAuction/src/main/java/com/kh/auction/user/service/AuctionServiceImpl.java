package com.kh.auction.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.AuctionDAO;

@Service
public class AuctionServiceImpl implements AuctionService{
	
	@Autowired
	private AuctionDAO aDAO;
	
	
	@Override //진행중인 경매의 총 갯수를 가지고옴
	public int getCountAuctionNum() {
		return aDAO.getCountAuctionNum();
	}

}
