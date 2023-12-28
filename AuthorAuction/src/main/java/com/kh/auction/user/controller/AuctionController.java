package com.kh.auction.user.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
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
		ArrayList<Auction> auctionList = aService.getAllAuction();
		
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
		
		/*
		 * String finishDate = auction.getAucFinishDate(); SimpleDateFormat sdf = new
		 * SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 * 
		 * Date date = null;
		 * 
		 * try { date = sdf.parse(finishDate); } catch (ParseException e) {
		 * e.printStackTrace(); }
		 * 
		 * model.addAttribute("finishDate", date);
		 */
		model.addAttribute("auction",auction);
		model.addAttribute("page", page);
		
		return "/auction/auctionDetail";
	}
	
	
	//입찰 - ajax 이용한 입찰
	@ResponseBody
	@PostMapping("insertBid.ac")
	public String insertBid(@RequestParam("bidMoney") int bidMoney, @RequestParam("aucNo") int aucNo, Model model) {
		
		Member m = (Member)model.getAttribute("loginUser");
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("bidMoney", bidMoney);
		hm.put("aucNo", aucNo);
		hm.put("id", m.getMemId());
		
		
		
		
		
		//insert all을 이용해서 입찰내역 및 경매의 내용 변경
		int result = aService.insertBid(hm);
		
		if(result > 0) {
			 Auction updateAuction = aService.getAuctionDetail(aucNo);
			 
			 
			 JSONObject jsonObject = new JSONObject();
			 JSONArray jArr = new JSONArray();
			
			 jsonObject.put("memBalance", m.getMemBalance());
			 jsonObject.put("aucFinishPrice",updateAuction.getAucFinishPrice());
			 jArr.put(jsonObject);
			 
			 String jsonString = jArr.toString();
			return jsonString;
		}else {
			return "fail";
		}
	}
}
