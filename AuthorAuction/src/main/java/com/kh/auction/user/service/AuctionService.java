package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.model.vo.BiddingDetail;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.PageInfo;

public interface AuctionService {
	
	//진행중인 총 경매의 수를 들고옴
	int getAllOngingAuctionNum();

	//진행중인 경매를 가지고옴
	ArrayList<Auction> getAllAuction(PageInfo pi);

	//경매 번호로 해당 경매정보 가지고 옴
	Auction getAuctionDetail(int aucNo);

	//관리자 - hashmap을 이용해 진행여부, 내용에 대한 경매들을 들고옴
	ArrayList<Auction> getAdminSearchList(HashMap<String, String> hm, PageInfo pi);
	
	//관리자 - hashmap을 이용해 진행여부, 내용에 대한 경매들의  수를 들고옴
	int getAdminSearchListCount(HashMap<String, String> hm);

	//입찰 - ajax 이용해 환불한후에 바로 경매금액 업데이트
	int insertBid(HashMap<String, Object> hm);

	//상세 페이지 이동시 관심 목록 등록 확인
	int checkLike(HashMap<String, Object> hm);

	//관심목록 업데이트 + 마이페이지 여러개 삭제
	String updateInterest(HashMap<String, Object> hm, String result);
	
	//경매 내부의 사진을 들고옴
	ArrayList<Attachment> getAuctionAttachment(int aucNo);

	//문의 글 번호로 경매 등록 - 경매가 아직 등록이 안되어 있기 때문에 경매 번호에 문의 글 번호 담음
	int insertAuction(Auction auction);

	//문의 글 번호로 문의 글 내용들고옴
	Consignment getConsignmentInfo(int conNo);

	//문의 글 번호로 문의 글에 등록된 사진들을 들고옴
	ArrayList<Attachment> getAttachment(int conNo);

	//내 관심 경매의 개수를 가지고 옴 + 조건 있는 것들도 재 활용
	int getAllInterestBidNum(HashMap<String, String> listCountHm);
	
	//아이디로 내 관심 목록 들고옴 + 조건 있는것들도 재 활용
	ArrayList<Auction> getMyInterestList(HashMap<String, String> interestHm, PageInfo pi);

	//내 입찰 경매의 개수를 가지고 옴
	int getAllMyBidListCount(HashMap<String, String> listCountHm);
	
	//내가 입찰한 경매의 목록을 들고옴
	ArrayList<Auction> getAllMyBidList(HashMap<String, String> bidListHm, PageInfo pi);

	//내가 입찰한 경매내역을 들고옴
	ArrayList<BiddingDetail> getAllMyDetail(HashMap<String, String> bidListHm, PageInfo pi);
	
}
