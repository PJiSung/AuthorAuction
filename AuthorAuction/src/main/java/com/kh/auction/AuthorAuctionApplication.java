package com.kh.auction;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
public class AuthorAuctionApplication {

	public static void main(String[] args) {
		SpringApplication.run(AuthorAuctionApplication.class, args);
	}
}
