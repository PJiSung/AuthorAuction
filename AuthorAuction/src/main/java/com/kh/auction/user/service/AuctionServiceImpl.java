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

	@Override //입찰 - ajax 이용한 입찰 + insert all을 이용해서 입찰내역 및 경매의 내용 변경
	public int insertBid(HashMap<String, Object> hm) {
		int updateAuctionPrice = aDAO.insertBid(hm);
		
		if(updateAuctionPrice > 0) {
			//입찰 성공시에 입찰내역 업데이트
			int insertBiddingDetail = aDAO.insertBiddingDetail(hm);
			
			//전 입찰자에게 금액 복구			
			aDAO.updateMoneyUnsold(hm);
			
			//입찰성공시에 금액 감소 
			aDAO.updateMoneyInsertBid(hm);

			
			
			return insertBiddingDetail;
		}else {
			return updateAuctionPrice;
		}
	}
}
