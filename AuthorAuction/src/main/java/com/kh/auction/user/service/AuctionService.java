package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.model.vo.Consignment;

public interface AuctionService {

	//진행중인 경매를 가지고옴 - 재활용해 총 갯수/페이징에도 사용
	ArrayList<Auction> getAllAuction();

	//경매 번호로 해당 경매정보 가지고 옴
	Auction getAuctionDetail(int aucNo);

	//hashmap을 이용해 진행여부, 내용에 대한 경매들을 들고옴
	ArrayList<Auction> getAdminSearchList(HashMap<String, String> hm);

	//입찰 - ajax 이용해 환불한후에 바로 경매금액 업데이트
	int insertBid(HashMap<String, Object> hm);

	//상세 페이지 이동시 관심 목록 등록 확인
	int likeCheck(HashMap<String, Object> hm);

	//관심목록 업데이트
	String updateInterest(HashMap<String, Object> hm);
	
	//경매 내부의 사진을 들고옴
	ArrayList<Attachment> getAuctionAttachment(int aucNo);

	//문의 글 번호로 경매 등록 - 경매가 아직 등록이 안되어 있기 때문에 경매 번호에 문의 글 번호 담음
	int insertAuction(Auction auction);

	//문의 글 번호로 문의 글 내용들고옴
	Consignment getConsignmentInfo(int conNo);

	//문의 글 번호로 문의 글에 등록된 사진들을 들고옴
	ArrayList<Attachment> getAttachment(int conNo);
	
}
