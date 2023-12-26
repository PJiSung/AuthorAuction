package com.kh.auction.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.service.AuctionService;

@Controller
public class AdminController {
	
	@Autowired
	private AuctionService aService;
	
	@GetMapping("adminInquiry.adac")
	public String moveToAdminInquiry(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		int currentPage = page;
		
		//관리자 조회 페이지 접근시 기본적으로 진행중인 경매만 보이도록 설정
		ArrayList<Auction> auctionList = aService.getAllAuction();
		PageInfo pi = Pagination.getPageInfo(currentPage, auctionList.size(), 10);
		
		model.addAttribute("pi", pi);
		model.addAttribute("aList", auctionList);
		model.addAttribute("total", auctionList.size());
		
		return "/auction/adminInquiry";
	}
}
