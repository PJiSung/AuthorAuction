package com.kh.auction.user.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.RecommendationDAO;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Recommendation;

@Service
public class RecommendationServiceImpl implements RecommendationService{

	@Autowired
	RecommendationDAO rDAO;
	
	// 그림추천 리스트
	@Override
	public int getListCount() {
		return rDAO.getListCount();
	}
	// 그림추천 리스트
	@Override
	public ArrayList<Recommendation> selectRecommendationList(PageInfo pi) {
		return rDAO.selectRecommendationList(pi);
	}
	// 그림추천 글 등록(글)	
	@Override
	public int insertRecommendation(Recommendation r) {
		return rDAO.insertRecommendation(r);
	}
	// 그림추천 글 등록(문의)	
	@Override
	public int insertAttm(ArrayList<Attachment> list) {
		return rDAO.insertAttm(list);
	}

}
