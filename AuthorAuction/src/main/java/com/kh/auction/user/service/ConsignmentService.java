package com.kh.auction.user.service;

import java.util.ArrayList;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;

public interface ConsignmentService {

	int insertConsignment(Consignment c);
          
	int insertAttm(ArrayList<Attachment> list);

	Consignment selectConsignment(int conNo, String id);

	ArrayList<Attachment> selectAttmConsignmentList(Integer conNo);
	// 마이페이지 리스트
	int getListCount(int i);
	// 마이페이지 리스트
	ArrayList<Consignment> selectConsignmentList(int i, PageInfo pi);


}
