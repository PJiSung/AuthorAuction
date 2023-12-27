package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;

public interface ConsignmentService {
	
	// 위탁 문의 등록(글)
	int insertConsignment(Consignment c);
	// 위탁 문의 등록(첨부)      
	int insertAttm(ArrayList<Attachment> list);
	// 상세조회
	Consignment selectConsignment(int conNo, String id);
	// 상세조회
	ArrayList<Attachment> selectAttmConsignmentList(Integer conNo);
	// 마이페이지 리스트
	int getListCount(int i);
	// 마이페이지 리스트
	ArrayList<Consignment> selectConsignmentList(int i, PageInfo pi);
	// 마이페이지 검색
	int searchCount(HashMap<String, String> map);
	// 마이페이지 검색
	ArrayList<Consignment> searchList(HashMap<String, String> map, PageInfo pi);


}
