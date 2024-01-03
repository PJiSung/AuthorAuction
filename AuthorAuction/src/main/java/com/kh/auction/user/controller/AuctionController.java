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
import com.kh.auction.member.service.MemberService;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Auction;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.service.AuctionService;

@SessionAttributes("loginUser")
@Controller
public class AuctionController {
	
	@Autowired
	private AuctionService aService;
	
	@Autowired
	private MemberService mService;
	
	@GetMapping("auctionList.ac") 
	public String moveToAuctionList(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		//진행중인 경매의 모든 경매리스트를 가지고옴
		ArrayList<Auction> auctionList = aService.getAllAuction();
		
		System.out.println(auctionList);
		
		//가지고온 경매리스트의 갯수(size)가 총 갯수
		PageInfo pi = Pagination.getPageInfo(page, auctionList.size(), 12);
	
		model.addAttribute("pi",pi);
		model.addAttribute("total", auctionList.size());
		model.addAttribute("aList", auctionList);
		  
		return "/auction/auctionList";
	}
	
	@GetMapping("auctionDetail.ac")
	public String moveToAuctionDetail(@RequestParam("page") int page, @RequestParam("aucNo") int aucNo, Model model) { 
		
		//경매 번호를 가지고 세부내용을 들고옴
		Auction auction = aService.getAuctionDetail(aucNo);
		//경매 내부의 사진을 들고옴
		
		ArrayList<Attachment> attachmentList = aService.getAuctionAttachment(aucNo);
		 
		model.addAttribute("auction",auction);
		model.addAttribute("page", page);
		model.addAttribute("attachmentList",attachmentList);
		
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
		
		//입찰 - ajax 이용해 환불한후에 바로 경매금액 업데이트 
		int result = aService.insertBid(hm);
		
		if(result > 0) {
			 Auction updateAuction = aService.getAuctionDetail(aucNo);
			 m = mService.login(m);
			 
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
	
	@ResponseBody
	@PostMapping("checkLike.ac")//상세 페이지로 이동할때 좋아요를 눌렀는지 체크
	public int checkLike(@RequestParam("aucNo") int aucNo, Model model) {
		String id = null;
		Member m = ((Member)model.getAttribute("loginUser"));
		int likeCheck = 0;
		
		if(m != null) {
			HashMap<String, Object> hm = new HashMap<>();
			id = m.getMemId();
			hm.put("aucNo", aucNo);
			hm.put("id", m.getMemId());
			likeCheck = aService.likeCheck(hm);
			model.addAttribute("likeCheck", likeCheck);
			return likeCheck;
		}
			return 0;
	}
	
	@ResponseBody
	@PostMapping("interest.ac") //ajax 관심 목록 업데이트
	public String updateInterest(@RequestParam("aucNo") int aucNo, Model model) {
		String id = ((Member)model.getAttribute("loginUser")).getMemId();
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("id", id);
		hm.put("aucNo", aucNo);
		String result = aService.updateInterest(hm);
		return result;
	}
	
	@GetMapping("myBidList.ac")
	public String moveToMyBIdList() {
		return "/auction/myAuction";
	}
	
	@GetMapping("myInterest.ac")
	public String moveToMyInterest(Model model) {
		
		String id = ((Member)model.getAttribute("loginUser")).getMemId();
		//ArrayList<Auction> aList = aService.getMyInterestList(id);
		
		return "/auction/likeList";
	}
	
	 
}
