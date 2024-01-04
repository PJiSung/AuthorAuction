package com.kh.auction.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.member.service.MemberService;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberAdminController {
	
	@Autowired
	private MemberService mService;
	
	@GetMapping("test")
	public String test(@RequestParam(value="page", defaultValue="1") int page, HttpServletRequest request, 
						Model model, HttpSession session) throws Exception {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String memId = (loginUser != null) ? loginUser.getMemId() : null;
		
		int listCount = mService.getListCount(memId);
		int currentPage = page;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);
		ArrayList<Member> list = mService.selectMemberList(memId, pi);
		 
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("loc", request.getRequestURI());
			
			return "member/memberList";
		} else {
			throw new Exception("회원 목록 조회를 실패하였습니다.");
		}
	}
}
