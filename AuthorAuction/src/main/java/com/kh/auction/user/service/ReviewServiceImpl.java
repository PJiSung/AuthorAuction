package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.ReviewDAO;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Review;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO rDAO;

	@Override
	public ArrayList<HashMap<String, Object>> getOrderList(String id) {
		return rDAO.getOrderList(id);
	}
	
	@Override
	public int insertReview(Review r) {
		return rDAO.insertReview(r);
	}
	
	@Override
	public int insertAttm(ArrayList<Attachment> list) {
		return rDAO.insertAttm(list);
	}
	
	@Override
	public int getListCount() {
		return rDAO.getListCount();
	}

	@Override
	public ArrayList<Review> selectReviewList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);

		return rDAO.selectReviewList(rowBounds);
	}

	@Override
	public ArrayList<Attachment> selectAttmList(Integer revNo) {
		return rDAO.selectAttmList(revNo);
	}

	@Override
	public int getSearchListCount(HashMap<String, String> map) {
		return rDAO.getSearchListCount(map);
	}

	@Override
	public ArrayList<Review> searchReview(HashMap<String, String> map, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);

		return rDAO.searchReview(map, rowBounds);
	}

	@Override
	public int deleteReview(int revNo) {
		return rDAO.deleteReview(revNo);
	}

	@Override
	public int statusNAttm(int revNo) {
		return rDAO.statusNAttm(revNo);
	}

	@Override
	public Review selectReview(int revNo) {
		return rDAO.selectReview(revNo);
	}

	@Override
	public int deleteAttm(ArrayList<String> delRename) {
		return rDAO.deleteAttm(delRename);
	}

	@Override
	public void updateAttmLevel(int revNo) {
		rDAO.updateAttmLevel(revNo);
	}

	@Override
	public int updateReview(Review r) {
		return rDAO.updateReview(r);
	}

	@Override
	public int insertReviewList(HashMap<String, Object> map) {
		return rDAO.insertReviewList(map);
	}

	@Override
	public int selectReviewLike(int revNo) {
		return rDAO.selectReviewLike(revNo);
	}

	@Override
	public int deleteReviewLike(HashMap<String, Object> map) {
		return rDAO.deleteReviewLike(map);
	}

	@Override
	public ArrayList<HashMap<String, Object>> reviewLikeList() {
		return rDAO.reviewLikeList();
	}

	@Override
	public ArrayList<Review> selectReviewAllList() {
		return rDAO.selectReviewAllList();
	}

	@Override
	public int updateReviewCount(int revNo) {
		return rDAO.updateReviewCount(revNo);
	}

	

	

	

	
}
