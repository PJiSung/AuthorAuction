package com.kh.auction.member.controller;


import java.nio.charset.StandardCharsets;
import java.util.Base64;

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
				return "redirect:/";							
			} else {
				model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
				return "member/login";
			}
		}else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
			return "redirect:loginView";
		}
	}

	@GetMapping("authenticationView") //회원가입 초기화면 enroll XX
	public String authenticationView() {
		return "member/authentication";
	}
	
	@GetMapping("authentication")
	@ResponseBody
	public String authentication(@RequestParam("phone") String phone) {
//		DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSOPALGYRIMP6MF", "CBCSVEVQREQII6WLGDMTWIOPM3DWASHL", "https://api.solapi.com");
//		Message message = new Message();
//		message.setFrom("01068938300");
//		message.setTo(phone);
//		
		String authNum = "528564";
//		message.setText("[Author Auction] 인증번호 ["+authNum+"]를 입력해주세요.");
//
//		try {
//		  messageService.send(message);
//		} catch (NurigoMessageNotReceivedException exception) {
//		  System.out.println(exception.getFailedMessageList());
//		  System.out.println(exception.getMessage());
//		} catch (Exception exception) {
//		  System.out.println(exception.getMessage());
//		}
		return authNum;
	}
	
	@GetMapping("agreement")
	public String agreement(@RequestParam("phone") String phone, Model model) {
		model.addAttribute("phone", phone);
		return "member/agreement";
	}
	
	@GetMapping("enroll")
	public String enroll(@RequestParam("phone") String phone, Model model) {
		model.addAttribute("phone", phone);
		return "member/enroll";
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
		byte[] decodedBytes = Base64.getDecoder().decode(m.getMemPhone());
	    String phone = new String(decodedBytes, StandardCharsets.UTF_8);
		m.setMemPhone(phone);
		m.setMemPwd(bcrypt.encode(m.getMemPwd()));
		int result = mService.insertMemeber(m);
		if (result > 0) {
			return "member/enrollComplete";
		} else {
			return "member/login";//수정 실패창이동
		}
	}
	
	@GetMapping("findIdView")
	public String findIdView() {
		return "member/findId";
	}
	
	@PostMapping("findIdbyPhone")
	public String findId(Member m) {
		/*int result = mService.findIdbyPhone(m);
		if(result > 0) {
			DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSOPALGYRIMP6MF", "CBCSVEVQREQII6WLGDMTWIOPM3DWASHL", "https://api.solapi.com");
			Message message = new Message();
			message.setFrom("01068938300");
			message.setTo(m.getMemPhone());
			message.setText("인증번호입니다");

			try {
			  messageService.send(message);
			} catch (NurigoMessageNotReceivedException exception) {
			  System.out.println(exception.getFailedMessageList());
			  System.out.println(exception.getMessage());
			} catch (Exception exception) {
			  System.out.println(exception.getMessage());
			}
		}*/
		return "member/findId";
	}
	
}
