package com.kh.auction.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Auction;
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
	
	
}
