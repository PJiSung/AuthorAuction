package com.kh.auction.common.config;

import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import jakarta.servlet.http.HttpSessionListener;

@Configuration
public class securityConfig {

	@Bean
	public BCryptPasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public ServletListenerRegistrationBean<HttpSessionListener> LoginSessionListener() {
	    return new ServletListenerRegistrationBean<HttpSessionListener>((HttpSessionListener) new LoginSessionListener());
	}
	
}
