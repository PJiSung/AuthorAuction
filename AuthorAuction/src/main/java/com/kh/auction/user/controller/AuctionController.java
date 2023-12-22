package com.kh.auction.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.service.AuctionService;

@Controller
public class AuctionController {
	
	@Autowired
	private AuctionService aService;
	
	@RequestMapping("auctionList.ac")
	public String moveToAuctionList(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		int currentPage = page;
		
		//진행중인 경매의 총 갯수를 가지고옴
		int allAuctionNum = aService.getCountAuctionNum();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, allAuctionNum, 12);
		
		model.addAttribute("pi",pi);
		model.addAttribute("total", allAuctionNum);
		
		return "/auction/auctionList";
	}
	
}
