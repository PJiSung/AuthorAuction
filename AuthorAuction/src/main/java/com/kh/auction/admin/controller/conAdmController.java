package com.kh.auction.admin.controller;

import java.util.ArrayList;

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
	
	@GetMapping("list.adco")
	public String selectUserList(@RequestParam(value="page", defaultValue="1") int page, 
								 HttpServletRequest request, Model model, HttpSession session) throws Exception {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String memId = (loginUser != null) ? loginUser.getMemId() : null;
		
		int listCount = cService.getListCount(memId);
		int currentPage = page;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);
		ArrayList<Consignment> list = cService.selectUserList(memId, pi);
		
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("loc", request.getRequestURI());
			
			return "consignment/conAdminList";
		} else {
			throw new Exception("관리자 위탁문의 리스트 조회 실패");
		}
	}
	
	@GetMapping("selectUser.adco")
	public String selectUser(@RequestParam(value="conNo", defaultValue="1")int conNo, @RequestParam(value="page") String page,
							 HttpSession session, Model model) {
		Consignment c = cService.selectUserList(conNo);
		ArrayList<Consignment> list = cService.selectUserAttmList(conNo);
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("c", c);
			model.addAttribute("page", page);
			
			
//			return "consignment/conAdmDetail";	// 관리자 리스트 상세조회를 여기로 보내면 관라자열람여부 조건을 어떻게 할건지
			return "consignment/conDetail";		// 마이페이지 리스트랑 똑같은데 그럼 수정 삭제버튼을 관리자 열람 전에만 띄우게 한 걸 어떻게 할건지
		} else {
			throw new Exception("첨부파일 게시글 상세조회 실패");
		}
	}
	
}