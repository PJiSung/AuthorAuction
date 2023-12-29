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
	
	@Override //진행중인 모든 경매를 가지고옴
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

	@Override //입찰 - ajax 이용해 환불한후에 바로 경매금액 업데이트 및 입찰내역 업데이트 입찰자 금액감소
	public int insertBid(HashMap<String, Object> hm) {
		
		
		//입찰전 환불을 위해서 이전 경매의 정보를 다 들고옴
		int aucNo = (int) hm.get("aucNo");
		Auction beforeAuction = aDAO.getAuctionDetail(aucNo);
		hm.put("beforeBidMoney", (int)beforeAuction.getAucFinishPrice());
		hm.put("beforeId", (String)beforeAuction.getAucMemId());
		
		
		//경매금액 업데이트
		int updateAuctionPrice = aDAO.insertBid(hm);
		
		if(updateAuctionPrice > 0) {
			//유찰된 금액 환불
			if(hm.get("beforeId") != null) {
				aDAO.returnUnsold(hm);
			}
			
			//입찰성공시에 금액 감소 
			aDAO.updateMoneyInsertBid(hm);
			
			//입찰 성공시에 입찰내역 업데이트
			aDAO.insertBiddingDetail(hm);
			
		}
		
		return updateAuctionPrice;
	}

	@Override //상세페이지 이동시 관심 목록 여부 확인
	public int likeCheck(HashMap<String, Object> hm) {
		return aDAO.likeCheck(hm);
	}

	@Override //관심목록 업데이트
	public String updateInterest(HashMap<String, Object> hm) {
		if(aDAO.likeCheck(hm) > 0) {
			aDAO.insertLike(hm);
			return "insert";
		}else {
			aDAO.deleteLike(hm);
			return "delete";
		}
		
	}
}
