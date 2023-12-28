package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.ConsignmentDAO;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.PageInfo;

@Service
public class ConsignmentServiceImpl implements ConsignmentService{

	@Autowired
	private ConsignmentDAO cDAO;
	// 위탁 문의 등록(글)
	@Override
	public int insertConsignment(Consignment c) {
		return cDAO.insertConsignment(c);
	}          
	// 위탁 문의 등록(첨부)
	@Override
	public int insertAttm(ArrayList<Attachment> list) {
		return cDAO.insertAttm(list);
	}
	// 상세조회
	@Override
	public Consignment selectConsignment(int conNo, String id) {
		return cDAO.selectConsignment(conNo, id);
	}
	// 상세조회
	@Override
	public ArrayList<Attachment> selectAttmConsignmentList(Integer conNo) {
		return cDAO.selectAttmConsignmentList(conNo);
	}
	// 마이페이지 리스트	
	@Override
	public int getListCount(int i) {
		return cDAO.getListCount(i);
	}
	// 마이페이지 리스트	
	@Override
	public ArrayList<Consignment> selectConsignmentList(int i, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return cDAO.selectConsignmentList(i, pi, rowBounds);
	}
	// 마이페이지 검색
	@Override
	public int searchCount(HashMap<String, String> map) {
		return cDAO.searchCount(map);
	}
	// 마이페이지 검색	
	@Override
	public ArrayList<Consignment> searchList(HashMap<String, String> map, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return cDAO.searchList(map, rowBounds);
	}


	
}
