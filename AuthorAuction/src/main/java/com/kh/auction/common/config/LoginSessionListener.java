package com.kh.auction.common.config;

import com.kh.auction.member.controller.MemberController;
import com.kh.auction.user.model.vo.Member;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

@WebListener
public class LoginSessionListener implements HttpSessionListener {
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		Member loginUser = ((Member)session.getAttribute("loginUser"));
		if(loginUser != null) {
			if(loginUser.getMemIsAdmin().equals("Y")) MemberController.loginAdmin.remove(MemberController.loginAdmin.indexOf(loginUser.getMemId()));
		}
	}
}
