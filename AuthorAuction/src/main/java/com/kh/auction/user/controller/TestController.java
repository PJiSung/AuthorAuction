package com.kh.auction.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kh.auction.member.service.MemberService;
import com.kh.auction.user.model.vo.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class TestController {
	
	@Autowired
	MemberService mService;
	
	@GetMapping("/")
	public String test(HttpSession session) {
		Member m = new Member();
		String id = "123"; //로그인 할 아이디 입력
		m.setMemId(id);
		Member loginUser = mService.login(m);
		session.setAttribute("loginUser", loginUser);
		return "index";
	}
}
