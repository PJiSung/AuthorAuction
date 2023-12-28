package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.PageInfo;

public interface ConsignmentService {
	
	// 위탁 문의 등록(글)
	int insertConsignment(Consignment c);
	// 위탁 문의 등록(첨부)      
	int insertAttm(ArrayList<Attachment> list);
	// 마이페이지 리스트
	int getListCount(String memId);
	// 마이페이지 리스트
	ArrayList<Consignment> selectConsignmentList(String memId, PageInfo pi);
	// 마이페이지 검색
	int searchCount(HashMap<String, String> map);
	// 마이페이지 검색
	ArrayList<Consignment> searchList(HashMap<String, String> map, PageInfo pi);
	// 상세조회
	Consignment selectConsignment(int conNo);
	// 상세조회 첨부 리스트
	ArrayList<Attachment> selectAttmConsignmentList(int conNo);
	// 글 삭제
	int deleteConsignment(int conNo);
	// 글 삭제
	int statusNConsignment(int conNo);


}
