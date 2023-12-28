package com.kh.auction.user.controller;


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;
import com.kh.auction.user.service.ArtsService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ArtsController {

	
	@Autowired
	ArtsService aService;
	
	@GetMapping("wishlist.ar")
	public String Artslist(Model model,HttpSession session) {
		
		String loginid = ((Member)session.getAttribute("loginUser")).getMemId();
		ArrayList<Wishlist> wlist = aService.selectWishlist(loginid);
		
		model.addAttribute("loginid", loginid);
		model.addAttribute("wlist", wlist);
		model.addAttribute("wlistsize", wlist.size());
		
		return "arts/wishlist";
		
	}
	
	@GetMapping("artslist.ar")
	public String ArtsList(Model model, @RequestParam(value = "page", defaultValue = "1") int page,HttpServletRequest request) {
		
		int currentPage = page;
		
		int listCount = aService.getlistCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 12);
		
		ArrayList<Product> plist = aService.selectArtslist(pi);
		model.addAttribute("plistsize", plist.size());
		model.addAttribute("plist", plist);
		model.addAttribute("loc", request.getRequestURI());
		model.addAttribute("pi", pi);
		
		return "arts/artslist";
		
	}
	
	@GetMapping("artsDetail.ar")
	public String ArtsDetail(@RequestParam("proNo") int proNo,Model model) {
		
		Product p = aService.selectArts(proNo);
		model.addAttribute("p", p);
		
		return "arts/artsdetail";
		
	}
	
	@GetMapping("payment.ar")
	public String payment(HttpSession session, Model model) {
		
		
		String loginid = ((Member)session.getAttribute("loginUser")).getMemId();
		ArrayList<Wishlist> wlist = aService.selectWishlist(loginid);
		
		
		model.addAttribute("loginid", loginid);
		model.addAttribute("wlist", wlist);
		
		
		
		return "arts/payment";
	}
	
	@GetMapping("payresult.ar")
	public String payresult() {
		
		
		return "arts/payresult";
	}
	
	@ResponseBody
	@GetMapping("updatewishamount.ar")
	public String updatewishlist(Wishlist updatewis) {
		int result = aService.updatewishlist(updatewis);
		
		return "수량을 변경하였습니다";
	}
	
	@GetMapping("deletewis.ar")
	public String deletewis(Wishlist deletewis) {
		
		int result = aService.deletewis(deletewis);
		
		return "redirect:wishlist.ar";
		
	}
	
	
	@GetMapping("deletewishlist.ar")
	public String deletewishlist(@RequestParam("memId") String memId, @RequestParam("pronos") Integer[] pronos) {
		
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("memId", memId);
		map.put("pronos", pronos);
		
		 int result = aService.deletewishlist(map);
		 
		return "redirect:wishlist.ar";
	}
}
