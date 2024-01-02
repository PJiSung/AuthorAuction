package com.kh.auction.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {
	
	@GetMapping("myOrderList.od")
	public String goMyOrderList() {
		return "order/myOrderList";
	}
	
	@GetMapping("admOrderList.od")
	public String goManaOrderList() {
		return "order/admOrderList";
	}
	
	@GetMapping("myOrderDetail.od")
	public String goMyOrderDetail() {
		return "order/myOrderDetail";
	}

}
