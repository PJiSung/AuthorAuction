package com.kh.auction.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.auction.member.service.MemberService;
import com.kh.auction.user.model.vo.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	MemberService mService;

	@Autowired
	private BCryptPasswordEncoder bcrypt;

	@GetMapping("loginView")
	public String loginView() {
		return "member/login";
	}
	
	@PostMapping("login")
	public String login(Member m, HttpSession session, Model model) {
		Member loginUser = mService.login(m);
		if(loginUser != null) {
			if(bcrypt.matches(m.getMemPwd(), loginUser.getMemPwd())) {	
				session.setAttribute("loginUser", loginUser);
				return "index";							
			} else {
				model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
				return "member/login";
			}
		}else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
			return "redirect:loginView";
		}
	}

	@GetMapping("enroll")
	public String enroll() {
		return "member/authentication";
	}
	
	@GetMapping("checkId")
	@ResponseBody
	public int checkId(@RequestParam("memId") String memId) {
		int count = mService.checkId(memId);
		return count;
	}
	
	@GetMapping("checkNickName")
	@ResponseBody
	public int checkNickName(@RequestParam("memNickName") String memNickName) {
		int count = mService.checkNickName(memNickName);
		return count;
	}

	@PostMapping("insertMember")
	public String insertMember(@ModelAttribute Member m) {
		m.setMemPhone("01011112222");
		m.setMemPwd(bcrypt.encode(m.getMemPwd()));
		int result = mService.insertMemeber(m);
		if (result > 0) {
			return "member/enrollComplete";
		} else {
			return "member/login";//수정
		}
	}
	
	@GetMapping("findIdView")
	public String findId() {
		return "member/findId";
	}
	
}
