package com.kh.auction.user.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.auction.common.config.Pagination;
import com.kh.auction.user.exception.Exception;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Reply;
import com.kh.auction.user.model.vo.Review;
import com.kh.auction.user.service.ReviewService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	
	@GetMapping("myReviewList.rv")
	public String goMyReviewList() {
		return "review/myReviewList";
	}
	
	@GetMapping("reviewList.rv")
	public String goReviewList(HttpSession session,
							   @RequestParam(value="page", defaultValue="1") int page,
							   @RequestParam(value = "revNo", required = false) Integer revNo,
							   Model model) {
		
		int listCount = rService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(page, listCount, 9);
		ArrayList<Review> rList = rService.selectReviewList(pi);
		ArrayList<Review> allRlist = rService.selectReviewAllList();
		ArrayList<Attachment> aList = rService.selectAttmList(null);
		
		Review review = new Review();
		ArrayList<Reply> replyList = new ArrayList<Reply>();
		if(revNo != null) {
			review = rService.selectReview(revNo);
			replyList = rService.selectReplyList(revNo);
		}
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String id = null;
		if(loginUser != null) {
			id = loginUser.getMemId();
		}
		
		ArrayList<HashMap<String, Object>> oList =  rService.getOrderList(id);
		ArrayList<HashMap<String, Object>> lList = rService.reviewLikeList();
		if(rList != null) {
			model.addAttribute("pi", pi);
			model.addAttribute("rList", rList);
			model.addAttribute("aList", aList);
			model.addAttribute("oList", oList);
			model.addAttribute("lList", lList);
			model.addAttribute("allRlist", allRlist);
			model.addAttribute("replyList", replyList);
			model.addAttribute("review", review);
			return "review/reviewList";
		} else {
			throw new Exception("리뷰 리스트 조회에 실패하였습니다.");
		}
		
	}
	
	
	@GetMapping("writeReview.rv")
	public String goWriteReview(HttpSession session, Model model) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String id = null;
		if(loginUser != null) {
			id = loginUser.getMemId();
		}
		
		ArrayList<HashMap<String, Object>> list =  rService.getOrderList(id);
		
		if(list != null) {
			model.addAttribute("list", list);
			return "review/writeReview";
		} else {
			throw new Exception("리뷰 등록 페이지 이동에 실패하였습니다.");
		}
		
	}
	
	@PostMapping("insertReview.rv")
	public String insertReview(@ModelAttribute Review r,
							   @RequestParam("proNo") int proNo,
							   @RequestParam(value="file", required=false) ArrayList<MultipartFile> files,
							   HttpSession session) {
		String id = ((Member)session.getAttribute("loginUser")).getMemId();
		
		r.setMemId(id);
		r.setProNo(proNo);
		ArrayList<Attachment> list = new ArrayList<>();
		for(int i = 0; i < files.size(); i++) {
			MultipartFile upload = files.get(i);
			if(!upload.getOriginalFilename().equals("")) {
				String rename = saveFile(upload);
				if(rename != null) {
					Attachment a = new Attachment();
					a.setAttRename(rename);
					a.setAttCategory(1);
					
					list.add(a);
				}
			}
		}
		
		for(int i = 0; i < list.size(); i++) {
			Attachment a = list.get(i);
			if(i == 0) {
				a.setAttFno(0);
			} else {
				a.setAttFno(1);
			}
		}
		
		int result1 = rService.insertReview(r);
		
		
		if(!list.isEmpty()) {
			for(Attachment a : list) {
				a.setAttBno(r.getRevNo());
			}
			int result2 = rService.insertAttm(list);
			
			if(result1 + result2 == list.size()+1) {
				return "redirect:reviewList.rv";
			} else {
				for(Attachment a : list) {
					deleteFile(a.getAttRename());
				}
				throw new Exception("리뷰 등록에 실패하였습니다.");
			}
		} else {
			if(result1 > 0) {
				return "redirect:reviewList.rv";
			} else {
				throw new Exception("리뷰 등록에 실패하였습니다.");
			}
		}
		
	}
	
	public String saveFile(MultipartFile upload) {
//		String root = "C:\\";
//		String savaPath = root + "\\uploadFiles";
		
		String savaPath = "/Users/rosa/uploadFiles"; 
		
		
		File folder = new File(savaPath);
		if(!folder.exists()) {
			folder.mkdirs();
		}

		Date time = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		int ranNum = (int)(Math.random()*100000);
		
		String originFileName = upload.getOriginalFilename(); 
		String renameFileName = sdf.format(time) + ranNum + originFileName.substring(originFileName.lastIndexOf("."));
																	
//		String renamePath = folder + "\\" + renameFileName;
		String renamePath = folder + File.separator + renameFileName;
		try {
			upload.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return renameFileName;
	}
	
	public void deleteFile(String fileName) {
//		String root = "C:\\";
//		String savaPath = root + "\\uploadFiles";
		
		String savaPath = "/Users/rosa/uploadFiles"; 
		
//		File f = new File(savaPath + "\\" + fileName);
		File f = new File(savaPath + File.separator  + fileName);
		if(f.exists()) {
			f.delete();
		}
	}
	
	@GetMapping("searchReview.rv")
	public String searchReview(@RequestParam(value="keyword", required = false) String keyword,
							   @RequestParam(value="category", required = false) String category,
							   @RequestParam(value="selectedSort", required = false) String selectedSort,
							   @RequestParam(value = "revNo", required = false) Integer revNo,
							   @RequestParam(value="page", defaultValue="1") int page,
							   Model model) {

		HashMap<String, String> map = new HashMap<String, String>();
		
		if(keyword != null) {
			map.put("keyword", keyword.trim());
		}
		
		map.put("category", category);
		map.put("selectedSort", selectedSort);
		int listCount = rService.getSearchListCount(map);
		
		PageInfo pi = Pagination.getPageInfo(page, listCount, 9);
		ArrayList<Review> rList = rService.searchReview(map, pi);
		ArrayList<Attachment> aList = rService.selectAttmList(null);
		ArrayList<Review> allRlist = rService.selectReviewAllList();
		ArrayList<HashMap<String, Object>> lList = rService.reviewLikeList();
		
		Review review = new Review();
		ArrayList<Reply> replyList = new ArrayList<Reply>();
		if(revNo != null) {
			review = rService.selectReview(revNo);
			replyList = rService.selectReplyList(revNo);
			System.out.println(replyList);
		}
		
		if(rList != null) {
			if(!rList.isEmpty()) {
				model.addAttribute("pi", pi);
				model.addAttribute("rList", rList);
				model.addAttribute("aList", aList);
				model.addAttribute("replyList", replyList);
				model.addAttribute("review", review);
				model.addAttribute("allRlist", allRlist);
				model.addAttribute("lList", lList);
				return "review/reviewList";
			} else {
				return "review/reviewList";
			} 
		} else {
			throw new Exception("리뷰 검색 결과 조회에 실패하였습니다.");
		}
		
	}
	
	@PostMapping("deleteReview.rv")
	public String deleteReview(@RequestParam("revNo") int revNo,
							   @RequestParam("hasAttachment") String hasAttachment) {
		
		int result1 = rService.deleteReview(revNo);;
		if(hasAttachment.equals("Y")) {
			int result2 = rService.statusNAttm(revNo);
			if(result1 > 0 && result2 > 0) {
				return "redirect:reviewList.rv";
			} else {
				throw new Exception("리뷰 삭제에 실패하였습니다.");
			}
		} else {
			if(result1 > 0) {
				return "redirect:reviewList.rv";
			} else {
				throw new Exception("리뷰 삭제에 실패하였습니다.");
			}
		}
	}
	
	@PostMapping("goUpdateReview.rv")
	public String goUpdateReview(@RequestParam("revNo") int revNo,
								 @RequestParam("page") int page, Model model,
								 HttpSession session) {
		
		Review r = rService.selectReview(revNo);
		ArrayList<Attachment> list = rService.selectAttmList(revNo);
		
		model.addAttribute("r", r);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		return "review/updateReview";
	}
	
	@PostMapping("updateReview.rv")
	public String updateReview(@ModelAttribute Review r, @RequestParam("page") int page,
							   @RequestParam("file") ArrayList<MultipartFile> files,
							   @RequestParam(value="deleteAttm", required = false) String[] deleteAttm,
							   HttpServletRequest request, RedirectAttributes redirect) {
		
		ArrayList<Attachment> list = new ArrayList<>();
		for(int i = 0; i < files.size(); i++) {
			MultipartFile upload = files.get(i);
			
			if(!upload.getOriginalFilename().equals("")) {
				String rename = saveFile(upload);
				if(rename != null) {
					Attachment a = new Attachment();
					a.setAttRename(rename);
					a.setAttCategory(1);
					
					list.add(a);
				}
			}
		}
		
		ArrayList<String> delRename = new ArrayList<>();
		ArrayList<Integer> delLevel = new ArrayList<>();
		boolean existBeforeAttm = true;
		if(deleteAttm != null) {
			for(int i = 0; i < deleteAttm.length; i++) {
				String rename = deleteAttm[i];
				if(!rename.equals("none")) {
					String[] split = rename.split("/");
					delRename.add(split[0]);
					delLevel.add(Integer.parseInt(split[1]));
				}
			}
		} else {
			existBeforeAttm = false;
		}
		
		int deleteAttmResult = 0;
		if(!delRename.isEmpty()) {
			deleteAttmResult = rService.deleteAttm(delRename);
			if(deleteAttmResult > 0) {
				for(String rename : delRename) {
					deleteFile(rename);
				}
			}
			
			if(delRename.size() == deleteAttm.length) {
				existBeforeAttm = false;
			} else {
				for(int level : delLevel) {
					if(level == 0) {
						rService.updateAttmLevel(r.getRevNo());
						break;
					}
				}
			}
		}
		
		for(int i = 0; i < list.size(); i++) {
			Attachment a = list.get(i);
			a.setAttBno(r.getRevNo());
			
			if(existBeforeAttm) {
				a.setAttFno(1);
			} else {
				if(i == 0) {
					a.setAttFno(0);
				} else {
					a.setAttFno(1);
				}
			}
		}
		
		int updateReviewResult = rService.updateReview(r);
		int updateAttmResult = 0;
		if(!list.isEmpty()) {
			updateAttmResult = rService.insertAttm(list);
		}
		
		if(updateReviewResult + updateAttmResult == list.size()+1) {
			redirect.addAttribute("page", page);
			return "redirect:reviewList.rv";
		} else {
			throw new Exception("리뷰 수정에 실패하였습니다.");
		}
	}
	
	@ResponseBody
	@GetMapping("insertReviewLike.rv")
	public String insertReviewLike(@RequestParam("memId") String memId, 
								   @RequestParam("revNo") int revNo) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("memId", memId);
		map.put("revNo", revNo);
		
		int result = rService.insertReviewList(map);
		int likeCount = 0;
		if(result > 0) {
			likeCount = rService.selectReviewLike(revNo);
		}
		
		return String.valueOf(likeCount);
	}
	
	@ResponseBody
	@GetMapping("deleteReviewLike.rv")
	public String deleteReviewLike(@RequestParam("memId") String memId, 
								   @RequestParam("revNo") int revNo) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("memId", memId);
		map.put("revNo", revNo);
		
		int result = rService.deleteReviewLike(map);
		int likeCount = 0;
		if(result > 0) {
			likeCount = rService.selectReviewLike(revNo);
		}
		
		return String.valueOf(likeCount);
	}
	
	@ResponseBody
	@GetMapping("selectReviewLike.rv")
	public String selectReviewLike(@RequestParam("revNo") int revNo) {
		
		int likeCount = rService.selectReviewLike(revNo);
		
		return String.valueOf(likeCount);
	}
	
	@ResponseBody
	@GetMapping("updateReviewCount.rv")
	public String updateReviewCount(@RequestParam("revNo") int revNo) {
		
		int result = rService.updateReviewCount(revNo);
		int count = 0;
		if(result > 0) {
			count = rService.getReviewCount(revNo);
		}
		
		return String.valueOf(count);
	}
	
	@ResponseBody
	@GetMapping("insertReply.rv")
	public String insertReple(@ModelAttribute Reply r) {
		
		int result = rService.insertReply(r);
		
		return result == 1 ? "success" : "fail";
		
	}
	
	@ResponseBody
	@GetMapping("updateReply.rv")
	public String updateReply(@ModelAttribute Reply r) {
		
		int result = rService.updateReply(r);
		
		return result == 1 ? "success" : "fail";
	}
	
	@ResponseBody
	@GetMapping("deleteReply.rv")
	public String deleteReply(@RequestParam("repNo") int repNo) {
		int result = rService.deleteReply(repNo);
		
		return result == 1 ? "success" : "fail";
	}

}
