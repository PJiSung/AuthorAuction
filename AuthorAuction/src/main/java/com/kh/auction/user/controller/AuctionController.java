package com.kh.auction.user.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

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
import com.kh.auction.user.model.vo.BiddingDetail;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.service.AuctionService;

import jakarta.servlet.http.HttpServletRequest;

@SessionAttributes("loginUser")
@Controller
public class AuctionController {
	
	@Autowired
	private AuctionService aService;
	
	@Autowired
	private MemberService mService;
	
	@GetMapping("auctionList.ac") 
	public String moveToAuctionList(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		//진행중인 경매의 수를 가져옴
		int ongoingAuctionNum = aService.getAllOngingAuctionNum();
		
		PageInfo pi = Pagination.getPageInfo(page, ongoingAuctionNum, 12);
		
		//진행중인 경매의 모든 경매리스트를 가지고옴
		ArrayList<Auction> auctionList = aService.getAllAuction(pi);
	
		model.addAttribute("pi",pi);
		model.addAttribute("total", ongoingAuctionNum);
		model.addAttribute("aList", auctionList);
		  
		return "/auction/auctionList";
	}
	
	@GetMapping("auctionDetail.ac")
	public String moveToAuctionDetail(@RequestParam(value="page", defaultValue="1") int page, @RequestParam("aucNo") int aucNo, Model model) { 
		
		//경매 들어가기전에 현재 보유금액을 들고옴
		int memBalance = mService.login((Member)model.getAttribute("loginUser")).getMemBalance();
		
		//경매 번호를 가지고 세부내용을 들고옴
		Auction auction = aService.getAuctionDetail(aucNo);
		//경매 내부의 사진을 들고옴
		
		ArrayList<Attachment> attachmentList = aService.getAuctionAttachment(aucNo);
		 
		model.addAttribute("auction",auction);
		model.addAttribute("page", page);
		model.addAttribute("attachmentList",attachmentList);
		model.addAttribute("memBalance",memBalance);
		
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
	@GetMapping("checkLike.ac")//상세 페이지로 이동할때 좋아요를 눌렀는지 체크
	public int checkLike(@RequestParam("aucNo") int aucNo, Model model) {
		String id = null;
		Member m = ((Member)model.getAttribute("loginUser"));
		int checkLike = 0;
		
		if(m != null) {
			HashMap<String, Object> hm = new HashMap<>();
			List<Integer> aucNos = new ArrayList<>();
			id = m.getMemId();
			hm.put("id", m.getMemId());
			aucNos.add(aucNo);
			hm.put("aucNo", aucNos);
			checkLike = aService.checkLike(hm);
			model.addAttribute("likeCheck", checkLike);
			return checkLike;
		}else {
			return checkLike;
		}
	}
	
	
	@ResponseBody
	@GetMapping("interest.ac") //ajax 관심 목록 업데이트 + 마이페이지 여러개 삭제
	public String updateInterest(@RequestParam(value="aucNo", required=false) Integer aucNo, Model model, @RequestParam(value="checkedNum[]", required=false) int[] checkedNum, @RequestParam(value="page", defaultValue = "1") int currentPage, HttpServletRequest request) {
		String result = null;
		HashMap<String, Object> hm = new HashMap<>();
		List<Integer> aucNos = new ArrayList<>();
		String id = ((Member)model.getAttribute("loginUser")).getMemId();
		hm.put("id", id);
		if(checkedNum == null) {
			result = "forCheck";
			aucNos.add(aucNo);
		}else {
			result = "delete";
			for(int i = 0; i < checkedNum.length; i++) {
				aucNos.add(checkedNum[i]);
			}
		}
		hm.put("aucNo", aucNos);
		return aService.updateInterest(hm,result);
	}
	
	
	
	
	@GetMapping("myBidList.ac")
	public String moveToMyBIdList(@RequestParam(value="page", defaultValue="1") int currentPage, Model model,@RequestParam(value="type", required=false) String type) {
		
		HashMap<String, String> bidListHm = new HashMap<>();
		HashMap<String, String> listCountHm = new HashMap<>();
		
		
		String id = null;
		Member m = ((Member)model.getAttribute("loginUser"));
		
		if(m != null) {
			id = m.getMemId();
			bidListHm.put("id", id);
			listCountHm.put("id", id);
			if(type != null) {
				bidListHm.put("type", type);
				listCountHm.put("type", type);
			}
		}
		
		
		// 내 입찰 경매의 개수를 가지고 옴
		int myBidCount = aService.getAllMyBidListCount(listCountHm);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, myBidCount, 10);
		
		//내가 입찰한 경매의 목록을 들고옴
		ArrayList<Auction> myBidList = aService.getAllMyBidList(bidListHm, pi);
		
		int price = 0;
		
		for(int i = 0; i < myBidList.size(); i++) {
			Auction a = myBidList.get(i);
			price = (int)a.getAucFinishPrice();
			a.setAucFinishPrice(price);
		}
		
		
		//내가 입찰한 경매내역을 들고옴
		ArrayList<BiddingDetail> detailList = aService.getAllMyDetail(bidListHm, pi);
		
		
		
		model.addAttribute("detailList", detailList);
		model.addAttribute("myBidList", myBidList);
		model.addAttribute("pi", pi);
		
		
		
		return "/auction/myAuction";
	}
	
	
	@GetMapping("myInterest.ac") //관심페이지로 이동
	public String moveToMyInterest(@RequestParam(value="page", defaultValue="1") int currentPage, Model model,HttpServletRequest request) {
		
		String id = null;
		Member m = ((Member)model.getAttribute("loginUser"));
		
		HashMap<String, String> interestHm = new HashMap<>();
		HashMap<String, String> listCountHm = new HashMap<>();
		
		if(m != null) {
			id = m.getMemId();
			listCountHm.put("id", id);
			interestHm.put("id", id);
		}
		
		//내 관심 경매의 개수를 가져옴 
		int myInterestNum = aService.getAllInterestBidNum(listCountHm);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, myInterestNum, 10);
		
		
		
		//아이디로 내 관심 목록 들고옴
		ArrayList<Auction> aList = aService.getMyInterestList(interestHm, pi);
		
		model.addAttribute("aList", aList);
		model.addAttribute("pi", pi);
		
		return "/auction/likeList"; // 일반 요청에 대한 응답 페이지
	}
	
	//
	
	@ResponseBody
	@GetMapping("myInterestChoose.ac") //관심페이지로 이동
	public String moveToMyInterestAll(@RequestParam(value="page", defaultValue="1") int currentPage, Model model,HttpServletRequest request,@RequestParam("type") String type) {
		
		String id = null;
		Member m = ((Member)model.getAttribute("loginUser"));
		
		HashMap<String, String> interestHm = new HashMap<>();
		HashMap<String, String> listCountHm = new HashMap<>();
		
		if(m != null) {
			id = m.getMemId();
			listCountHm.put("id", id);
			interestHm.put("id", id);
			if(type !=null) {
				listCountHm.put("type", type);
				interestHm.put("type", type);
			}
		}
		
		//내 관심 경매의 개수를 가져옴 
		int myInterestNum = aService.getAllInterestBidNum(listCountHm);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, myInterestNum, 5);
		
		//아이디로 내 관심 목록 들고옴
		ArrayList<Auction> aList = aService.getMyInterestList(interestHm, pi);
		
		model.addAttribute("aList", aList);
		model.addAttribute("pi", pi);
		
		return "success"; // 일반 요청에 대한 응답 페이지
	}
	
	
	
	
	
	
	
	@ResponseBody //내 관심 목록중 
	@GetMapping("myInterestEnd.ac")
	public String getMyInterestEnd(@RequestParam(value="page", defaultValue="1") int currentPage, Model model) {
		String id = ((Member)model.getAttribute("loginUser")).getMemId();
		HashMap<String, String> interestHm = new HashMap<>();
		HashMap<String, String> listCountHm = new HashMap<>();
		
		listCountHm.put("id", id);
		listCountHm.put("type", "end");
		//내 관심 경매의 개수를 가져옴 
		int myInterestNum = aService.getAllInterestBidNum(listCountHm);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, myInterestNum, 5);
		
		interestHm.put("id", id);
		interestHm.put("type", "end");
		
		//아이디로 내 관심 목록 들고옴
		ArrayList<Auction> aList = aService.getMyInterestList(interestHm, pi);
		
		return null;
	}
	//이제 각 ajax에 대한 값을 넣어주면 됨 조건 추가 및 1개로 다 쓸 수 있게 재활용
	 
}
