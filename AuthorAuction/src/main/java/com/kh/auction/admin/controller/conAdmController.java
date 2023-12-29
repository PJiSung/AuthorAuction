package com.kh.auction.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.common.config.Pagination;
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
	
}