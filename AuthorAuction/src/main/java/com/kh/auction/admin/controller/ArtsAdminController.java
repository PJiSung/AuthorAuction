package com.kh.auction.admin.controller;


import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.auction.user.service.ArtsService;

@Controller
public class ArtsAdminController {

	
	
	
	
	@Autowired
	ArtsService aService;
	
	
	
	
	 public static boolean isInteger(String strValue) {
		    try {
		      Integer.parseInt(strValue);
		      return true;
		    } catch (NumberFormatException ex) {
		      return false;
		    }
		  }

		  public static boolean isLong(String strValue) {
		    try {
		      Long.parseLong(strValue);
		      return true;
		    } catch (NumberFormatException ex) {
		      return false;
		    }
		  }
			
	
	
	@GetMapping("artsadmin.ar")
	public String artsadmin(@RequestParam(value = "page", defaultValue = "1") int page, 
							@RequestParam(value = "maxHeight", defaultValue = "0") int maxHeight,
							@RequestParam(value = "minHeight", defaultValue = "0") int minHeight,
							@RequestParam(value = "maxWidth", defaultValue = "0") int maxWidth,
							@RequestParam(value = "minWidth", defaultValue = "0") int minWidth,
							@RequestParam(value = "minPrice", defaultValue = "0") int minPrice,
							@RequestParam(value = "maxPrice", defaultValue = "0") int maxPrice,
							@RequestParam(value = "condition", defaultValue = "") String condition,
							@RequestParam(value = "keyword", defaultValue = "") String keyword,
							@RequestParam(value = "startDate", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date startDate,
							@RequestParam(value = "endDate", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date endDate) {
		
		
		
	
		
		
		
		HashMap<String, Object> map = new HashMap<String,Object>();
		
		
		map.put("condition", condition.trim());
		map.put("keyword", keyword.trim());
		
		map.put("isInt", isInteger(keyword.trim()));
		
		map.put("maxHeight", maxHeight);
		map.put("minHeight", minHeight);
		map.put("maxWidth", maxWidth);
		map.put("minWidth", minWidth);
		map.put("minPrice", minPrice);
		map.put("maxPrice", maxPrice);
		map.put("condition", condition);
		map.put("startDate", startDate != null ?  new java.sql.Date(startDate.getTime()) : null);
		map.put("endDate", endDate != null ?  new java.sql.Date(endDate.getTime()) : null);
		
		 
		
		int currentPage = page;
		
		int listCount = aService.getlistCountadmin(map);
		System.out.println(listCount);
		
		 
//		HashMap<String, Object> map = new HashMap<String,Object>();
//		map.put("keyword", keyword.getKeyword());
//		map.put("minHeight", keyword.getMinHeight());
//		map.put("maxHeight", keyword.getMaxHeight());
//		map.put("minWidth", keyword.getMinWidth());
//		map.put("maxWidth", keyword.getMaxWidth());
//		map.put("maxPrice", keyword.getMaxPrice());
//		map.put("minPrice", keyword.getMinPrice());
//		map.put("materiallist", materiallist);
//		map.put("order", order);	
//		
//		
//		int currentPage = page;
//		
//		int listCount = aService.getlistCount(map);
//		
//		ArrayList<Product> plist = null;
//		PageInfo pi = null;
//		if(viewarts == 12) {
//			
//			pi = Pagination.getPageInfo(currentPage, listCount, 12);
//			
//			if(page > pi.getMaxPage()) {
//				 pi.setCurrentPage(pi.getMaxPage());
//			 	}
//			if(page< pi.getStartPage()) {
//				pi.setCurrentPage(pi.getStartPage());
//			}
//		
//		plist = aService.selectArtslist(pi,map);
//		
//		}
//		else if(viewarts == 30) {
//			
//		 pi = Pagination.getPageInfo(currentPage, listCount, 30);
//			
//		 if(page > pi.getMaxPage()) {
//			 pi.setCurrentPage(pi.getMaxPage());
//		 	}
//		 if(page< pi.getStartPage()) {
//				pi.setCurrentPage(pi.getStartPage());
//			}
//			plist = aService.selectArtslist(pi,map);
//			
//		}
//		ArrayList<Attachment> alist = null;
//		if(!plist.isEmpty()) {
//			alist= aService.selectAttmlist(plist);
//		}
//		
//		model.addAttribute("materiallist", materiallist);
//		model.addAttribute("plistsize", listCount);
//		model.addAttribute("plist", plist);
//		model.addAttribute("loc", request.getRequestURI());
//		model.addAttribute("pi", pi);
//		
//		
		
		return "arts/artsAdmin";
		
	}
}
