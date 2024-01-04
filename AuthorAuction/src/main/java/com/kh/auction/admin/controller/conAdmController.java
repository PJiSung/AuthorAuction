package com.kh.auction.admin.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.exception.Exception;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.service.ConsignmentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class conAdmController {
	
	@Autowired
	private ConsignmentService cService;
	
	// 관리자 리스트
	@GetMapping("list.adco")
	public String selectUserList(@RequestParam(value="page", defaultValue="1") int page, 
								 HttpServletRequest request, Model model, HttpSession session) throws Exception {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String memId = (loginUser != null) ? loginUser.getMemId() : null;
		
		int listCount = cService.getListCount2(memId);
		int currentPage = page;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);
		ArrayList<Consignment> cList = cService.selectUserList(memId, pi);
		ArrayList<HashMap<String, Object>> aList = cService.selectAuctionMList();
		
		if(cList != null) {
			model.addAttribute("cList",cList);
			model.addAttribute("aList", aList);
			model.addAttribute("pi", pi);
			model.addAttribute("loc", request.getRequestURI());
			
			return "consignment/conAdminList";
		} else {
			throw new Exception("관리자 위탁문의 리스트 조회 실패");
		}
	}
	// 상세조회
	@GetMapping("selectUser.adco")
	public String selectUser(@RequestParam("conNo")int conNo,						// 리스트에서 받아와서
							 HttpSession session, Model model) {
	
	
		String isAdmin = ((Member)session.getAttribute("loginUser")).getMemIsAdmin();
		if(isAdmin.equals("Y")) {
			int result = cService.updateConAdmStatus(conNo);		// 관리자 열람 여부
			System.out.println(result);
		}
	
		Member m = cService.selectMember(conNo);
		Consignment c = cService.selectUser(conNo);
		ArrayList<Consignment> list = cService.selectAttmUserList(conNo);

		System.out.println(m);
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("c", c);
			model.addAttribute("m", m);												// 상세조회로 보내	
			
			return "consignment/conDetail";		
		} else {
			throw new Exception("첨부파일 게시글 상세조회 실패");
		}
	}
	// 체크박스 삭제
	@GetMapping("checkDelete.adco")
	public String checkDelete(@RequestParam("deleteIds") String[] deleteIds) {
		cService.checkDelete(deleteIds);
		
		return "redirect:list.adco"; 
	}
	// 조건 검색
	@GetMapping("searchList.adco")
	public String searchAdminConsignment(@RequestParam("select") String select,
										 @RequestParam("keyword") String keyword, Model model,
						 @RequestParam(value="page", defaultValue="1") int page,
										 @RequestParam(value="strDate", required = false)String strDate,
										 @RequestParam(value="endDate", required = false)String endDate) {
										// keyword : 입력한 검색어 / select : select에서 가져오는 기준
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("select", select);
		map.put("keyword", keyword);
		map.put("strDate", strDate);
		map.put("endDate", endDate);
		
		int listCount = cService.searchCount2(map);
		int currentPage = page;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);
		ArrayList<Consignment> cList = cService.searchList2(map, pi);
		
		if(cList != null) {
			model.addAttribute("cList", cList);
			model.addAttribute("pi", pi);
			
			return "consignment/conAdminList";
		} else {
			throw new Exception("게시글 검색 실패");
		}
		
	}
	// 수락 / 거절 페이지 이동
	
	
	
}