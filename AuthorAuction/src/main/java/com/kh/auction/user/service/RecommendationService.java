package com.kh.auction.user.service;

import java.util.ArrayList;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Recommendation;

public interface RecommendationService {

	// 그림추천 리스트
	int getListCount();
	// 그림추천 리스트
	ArrayList<Recommendation> selectRecommendationList(PageInfo pi);
	// 그림추천 글 등록(글)
	int insertRecommendation(Recommendation r);
	// 그림추천 글 등록(첨부)	
	int insertAttm(ArrayList<Attachment> list);

}
