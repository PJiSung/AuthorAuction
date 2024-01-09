package com.kh.auction.user.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Recommendation;
import com.kh.auction.user.service.RecommendationService;

import jakarta.servlet.http.HttpSession;

@Controller
public class RecommendationController {
	
	@Autowired
	private RecommendationService rService;
	
	// 그림추천 리스트
	@GetMapping("recommendationList.re")
	public String moveToRecommendationList(HttpSession session, @RequestParam(value="page", defaultValue="1") int page, Model model) throws Exception {
		
		int listCount = rService.getListCount();
		int currentPage = page;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 6);
		ArrayList<Recommendation> list = rService.selectRecommendationList(pi);
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String memId = (loginUser != null) ? loginUser.getMemId() : null;
		
		if(loginUser != null && list != null) {
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
				
			return "recommendation/recommendationList";
		} else {
			throw new Exception("그림추천 목록 조회를 실패하였습니다.");
		}
		
	}
	
	// 그림추천 문의 등록 페이지로
	@GetMapping("recommendationEnroll.re")
	public String moveToRecommendationEnroll(HttpSession session) {
		
		return "recommendation/recommendationEnroll";
	}
	
	// 그림추천 문의 등록
	@PostMapping("insertRecommendation.re")
	public String insertRecommendation(@ModelAttribute Recommendation r, HttpSession session, Model model,
			 						   @RequestParam(value = "file", required = false) ArrayList<MultipartFile> files) throws Exception {
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		// 첨부 파일 리스트를 담을 ArrayList를 생성
		ArrayList<Attachment> list = new ArrayList<>();
		r.setMemId(memId);
		System.out.println(r);
		
		if(list != null) {
			for(int i = 0; i < files.size(); i++) {
				MultipartFile upload = files.get(i);
				
				if(!upload.getOriginalFilename().equals("")) {
					// 파일 저장하고 저장된 파일정보 가져옴
					String rename = saveFile(upload);
					if(rename != null) {
						Attachment a = new Attachment();
						a.setAttRename(rename);
						a.setAttCategory(3);	// 그림추천 게시판
						a.setAttFno(i);			// 썸네일(0)	
						list.add(a);
					}
				}
			}
		}
		
		int result1 = rService.insertRecommendation(r);	// 정보 저장 리스트
		System.out.println(result1);
		System.out.println(files);
		System.out.println(list);
		if(!list.isEmpty()) {
			for(Attachment a : list) {
				a.setAttBno(r.getRecNo());
			}
			int result2 = rService.insertAttm(list);	// 사진 리스트
			
			if(result1 > 0 && result2 > 0) {			// 정보저장, 사진 둘 다 있어야함
				return "redirect:recommendationList.re";
			} else {
				for(Attachment a : list) {
					deleteFile(a.getAttRename());
				}
				throw new Exception("그림추천 문의 게시글 등록을 실패하였습니다.");
			}
		} else {
			if(result1 > 0) {
				return "redirect:recommendationList.re";
			} else { 
				throw new Exception("그림추천 문의 게시글 등록을 실패하였습니다.");
			}
		}
	}

	private String saveFile(MultipartFile upload) {
		String root = "C:\\";
		String savePath = root + "\\uploadFiles";
		
//		String savePath = "/Users/kimgahyun/uploadFiles"; 				// 맥
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdir();
		}
		// 저장파일 rename	
		Date time = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		int ranNum = (int)(Math.random() * 100000);
		
		String originFileName = upload.getOriginalFilename();
		String renameFileName = sdf.format(time) + ranNum + originFileName.substring(originFileName.lastIndexOf("."));
		
		// rename된 파일 저장소에 저장
		String renamePath = folder + "\\" + renameFileName; // 이름 변경
//		String renamePath = folder + File.separator + renameFileName;	// 맥
		
		try {
			upload.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return renameFileName;
	}

	private void deleteFile(String fileName) {
		String root = "C:\\";
		String savePath = root + "\\uploadFiles";
		
//		String savePath = "/Users/kimgahyun/uploadFiles";				// 맥
//		File f = new File(savePath + File.separator + fileName);		// 맥
		
		File f = new File(savePath + "\\" + fileName);
		if(f.exists()) {
			f.delete();
		}
	}
	
	
	
}
