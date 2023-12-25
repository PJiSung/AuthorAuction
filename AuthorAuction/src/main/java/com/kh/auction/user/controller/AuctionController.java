package com.kh.auction.user.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.service.AuctionService;

@SessionAttributes("loginUser")
@Controller
public class AuctionController {
	
	@Autowired
	private AuctionService aService;
	
	@GetMapping("auctionList.ac")
	public String moveToAuctionList(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		int currentPage = page;
		
		//진행중인 경매의 모든 경매리스트를 가지고옴
		ArrayList<Auction> auctionList = aService.getCountAuctionNum();
		
														//가지고온 경매리스트의 갯수(size)가 총 갯수
		PageInfo pi = Pagination.getPageInfo(currentPage, auctionList.size(), 12);
	
		model.addAttribute("pi",pi);
		model.addAttribute("total", auctionList.size());
		model.addAttribute("aList", auctionList);
		
		return "/auction/auctionList";
	}
	
	@GetMapping("auctionDetail.ac")
	public String moveToAuctionDetail(@RequestParam("page") int page, @RequestParam("aucNo") int aucNo, Model model) { 
	//경매 번호를 가지고 세부내용을 들고옴
		Auction auction = aService.getAuctionDetail(aucNo);
		
		
		Member m = ((Member)model.getAttribute("loginUser"));
		
		String finishDate = auction.getAucFinishDate();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Date date = null;
		
		try {
			date = sdf.parse(finishDate);
			} catch (ParseException e) {
				e.printStackTrace();
			} 
	  
		model.addAttribute("finishDate", date);
		model.addAttribute("auction",auction);
		model.addAttribute("page", page);
		 
		 return "/auction/auctionDetail";
	 }
	 
	
}
