package com.kh.auction.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArtsAdminController {

	
	
	
	
	
	
	@GetMapping("artsadmin.ar")
	public String artsadmin() {
		
		
		
		
		return "arts/artsAdmin";
		
	}
}
