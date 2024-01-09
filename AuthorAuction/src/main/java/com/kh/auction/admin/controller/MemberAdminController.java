package com.kh.auction.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.member.service.MemberService;
import com.kh.auction.user.model.vo.Inquiry;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.SearchMember;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberAdminController {
	
	@Autowired
	private MemberService mService;
	
	private String sortMember = null;
	
	@GetMapping("memberList.adme")
	public String selectMemberList(@RequestParam(value="page", defaultValue="1") int page, @RequestParam(value = "modalPage", defaultValue="1") int modalPage, Model model, HttpSession session, SearchMember sm, @RequestParam(value = "id", required = false) String id) throws Exception {
		
		sm.convertEmptyToNull();
		
		sortMember = sm.getStatus();
		Member m = new Member();
		
		ArrayList<Inquiry> iList = new ArrayList<>();
		
		int iListCount; 
		int modalCurrentPage = modalPage; 
		PageInfo iPi;
		
		if(id != null) {
			m = mService.selectMember(id);
		    iListCount = mService.getiListCount(id); 
		    iPi = Pagination.getPageInfo(modalCurrentPage, iListCount, 10); 
		    iList = mService.selectInquiryList(id, iPi);
		}
		int listCount = mService.getListCount(sm);
		int currentPage = page;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);
		ArrayList<Member> list = mService.selectMemberList(sm, pi);
		
		if(list != null) {
			
			model.addAttribute("iList", iList);
			//model.addAttribute("iPi", iPi);
			
			model.addAttribute("total", listCount);
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("sm", sm);
			model.addAttribute("status", sortMember);
			model.addAttribute("m", m);
			return "member/memberList";
		} else {
			throw new Exception("회원 목록 조회를 실패하였습니다.");
		}
	}
	
	@PostMapping("deleteMember.adme")
	@ResponseBody
	public String deleteMember(@RequestParam("ids[]") String[] ids) {
		int result = mService.deleteMembers(ids);
		if(result > 0) {
			return "success";
		}
		return "fail";
	}
	
	@PostMapping("updateMemberIsAdmin.adme")
	@ResponseBody
	public String updateMemberIsAdmin(Member m) {
		int result = mService.updateMemberIsAdmin(m);
		if(result > 0) {
			return "success";
		}
		return "fail";
	}
	
	
	@PostMapping("updateMember.adme")
	@ResponseBody
	public String updateMember(Member m) {
		System.out.println(m);
		System.out.println(m.getMemPwd());
		int result = mService.updateMemberByAdmin(m);
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
}
