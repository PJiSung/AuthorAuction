package com.kh.auction.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.service.AuctionService;

@Controller
public class AuctionAdminController {
	
	@Autowired
	private AuctionService aService;
	
	@GetMapping("adminInquiry.adac")
	public String moveToAdminInquiry(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		//관리자 조회 페이지 접근시 기본적으로 진행중인 경매만 보이도록 설정
		ArrayList<Auction> auctionList = aService.getAllAuction();
		
		PageInfo pi = Pagination.getPageInfo(page, auctionList.size(), 10);
		
		
		
		model.addAttribute("pi", pi);
		model.addAttribute("aList", auctionList);
		model.addAttribute("total", auctionList.size());
		
		return "/auction/adminInquiry";
	}
	
	@GetMapping("search.adac")
	public String searchAuction(@RequestParam(value="searchType", required=false) String searchType, @RequestParam("content") String content,
								@RequestParam(value="auctionStatus", required=false) String auctionStatus,
								@RequestParam(value="aucSS", required=false) String aucSS,
								@RequestParam(value="aucSE", required=false) String aucSE,
								@RequestParam(value="aucFS", required=false) String aucFS,
								@RequestParam(value="aucFE", required=false) String aucFE,
								@RequestParam(value="page", defaultValue="1") int page, Model model) {
		HashMap<String, String> hm = new HashMap<>();
		
		if(auctionStatus != null) {
			hm.put("auctionStatus", auctionStatus);
		}
		
		if(!aucSS.equals("")) {
			hm.put("aucSS", aucSS + " 00:00:00");
		}
		
		if(!aucSE.equals("")) {
			hm.put("aucSE", aucSE + " 23:59:59");
		}
		
		if(!aucFS.equals("")) {
			hm.put("aucFS", aucFS + " 00:00:00");
		}
		
		if(!aucFE.equals("")) {
			hm.put("aucFE", aucFE + " 23:59:59");
		}
		
		hm.put("searchType", searchType);
		hm.put("content", content);
		//hashmap을 이용해 진행여부, 내용에 대한 경매들을 들고옴
		ArrayList<Auction> aList = aService.getAdminSearchList(hm);
		
		PageInfo pi = Pagination.getPageInfo(page, aList.size(), 5);
		
		model.addAttribute("aList", aList);
		model.addAttribute("auctionStatus", auctionStatus);
		model.addAttribute("pi", pi);
		
		System.out.println(aList);
		return "";
		
	}
	
	@ResponseBody
	@PostMapping("getConsignmentInfo.adac")
	public HashMap<String, Object> getConsignmentInfo(@RequestParam("conNo") int conNo) {
		
		HashMap<String, Object> hm = new HashMap<>(); 
		
		Consignment consignment = aService.getConsignmentInfo(conNo);
		ArrayList<Attachment> attachment = aService.getAttachment(conNo);
		
		Gson gson = new Gson();
		
		String consignmentJson = gson.toJson(consignment);
		String attachmentJson = gson.toJson(attachment);
		
		hm.put("consignment", consignmentJson);
		hm.put("attachmentList", attachmentJson);
		
		return hm;
	}
	
	
	@GetMapping("enrollAuction.adac")
	public String moveToEnrollAuction() {
		return "/auction/enrollAuction";
	}
	
	@ResponseBody
	@PostMapping("insertAuction.adac")
	public String insertAuction(@ModelAttribute Auction auction, Model model) {
		//문의 글 번호로 경매 등록 - 경매가 아직 등록이 안되어 있기 때문에 경매 번호에 문의 글 번호 담음
		auction.setAucStartDate(auction.getAucStartDate() +" 00:00:00");
		auction.setAucFinishDate(auction.getAucFinishDate() + " 23:59:59");
		int result = aService.insertAuction(auction);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	@GetMapping("editAuction.adac")
	public String moveToEditAuction() {
		return "/auction/editAuction";
	}
	
	@GetMapping("endAuction.adac")
	public String moveToEndAuctioin() {
		return "/auction/endAuction";
	}
	
	@GetMapping("scheduledAuction.adac")
	public String moveToScheduledAuction() {
		return "/auction/scheduledAuction";
	}
	
}
