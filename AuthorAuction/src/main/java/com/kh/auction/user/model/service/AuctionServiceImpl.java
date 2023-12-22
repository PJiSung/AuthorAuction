package com.kh.auction.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.model.dao.AuctionDAO;

@Service
public class AuctionServiceImpl implements AuctionService {

	@Autowired
	private AuctionDAO aDAO;

	
	//진행중인 경매의 갯수를 가지고옴
	@Override
	public int getCountAuctionNum() {
		return aDAO.getCountAuctionNum();
	}
}
