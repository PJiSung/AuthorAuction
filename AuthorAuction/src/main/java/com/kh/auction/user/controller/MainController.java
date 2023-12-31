package com.kh.auction.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.auction.inquiry.handler.SocketHandler;
import com.kh.auction.member.service.MemberService;
import com.kh.auction.user.model.vo.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	@Autowired
	MemberService mService;
	
	@GetMapping("/")
	public String test(HttpSession session) {
		Member m = new Member();
		String id = "starcr222";
		m.setMemId(id);
		Member loginUser = mService.login(m);
		session.setAttribute("loginUser", loginUser);
		return "index";
	}
	
	@GetMapping("chat")
	public String chat(@RequestParam(value = "roomNumber", defaultValue = "1") String roomNumber, Model model) {
		model.addAttribute("roomNumber", roomNumber);
		return "common/chat";
	}
	
	@GetMapping("getWaiting")
	@ResponseBody
	public int getWaiting() {
		return SocketHandler.waiting;
	}
	
	@PostMapping("selectImg")
	@ResponseBody
	public String selectImg(@RequestParam("id") String id) {
		return mService.selectImg(id);
	}
}
