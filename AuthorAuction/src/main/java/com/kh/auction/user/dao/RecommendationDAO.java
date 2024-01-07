package com.kh.auction.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Recommendation;

@Mapper
public interface RecommendationDAO {

	int getListCount();

	ArrayList<Recommendation> selectRecommendationList(PageInfo pi);

	int insertRecommendation(Recommendation r);

	int insertAttm(ArrayList<Attachment> list);

}
