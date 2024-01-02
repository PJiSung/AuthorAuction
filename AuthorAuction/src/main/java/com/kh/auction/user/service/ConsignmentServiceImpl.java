package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.ConsignmentDAO;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.Member;
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
	// 마이페이지 리스트	
	@Override
	public int getListCount(String memId) {
		return cDAO.getListCount(memId);
	}
	// 마이페이지 리스트	
	@Override
	public ArrayList<Consignment> selectConsignmentList(String memId, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return cDAO.selectConsignmentList(memId, rowBounds);
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
	// 상세조회
	@Override
	public Consignment selectConsignment(int conNo) {
		return cDAO.selectConsignment(conNo);
	}
	// 상세조회 첨부 리스트
	@Override
	public ArrayList<Attachment> selectAttmConsignmentList(int conNo) {
		return cDAO.selectAttmConsignmentList(conNo);
	}
	// 관리자 열람여부
	@Override
	public int updateConAdmStatus(int conNo) {
		return cDAO.updateConAdmStatus(conNo);
	}
	// 상세조회 멤버 가져옴
	@Override
	public Member selectMember(int conNo) {
		return cDAO.selectMember(conNo);
	}
	// 글 삭제
	@Override
	public int deleteConsignment(int conNo) {
		return cDAO.deleteConsignment(conNo);
	}
	// 글 삭제
	@Override
	public int statusNConsignment(int conNo) {
		return cDAO.statusNConsignment(conNo);
	}
	
	
	
	
	// 글 수정
	@Override
	public int deleteAttm(ArrayList<String> delRename) {
		return cDAO.deleteAttm(delRename);
	}
	@Override
	public void updateAttmFno(HashMap<String, Object> map) {
		cDAO.updateAttmFno(map);
	}
	@Override
	public int updateConsignment(Consignment c) {
		return cDAO.updateConsignment(c);
	}
	
	
	
	//////////////////////////////////////////////////////////////////////////////

	
	
	// 관리자 리스트
	@Override
	public int getListCount2(String memId) {
		return cDAO.getListCount2(memId);
	}
	// 관리자 리스트
	@Override
	public ArrayList<Consignment> selectUserList(String memId, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return cDAO.selectUserList(memId, rowBounds);
	}
	// 관리자 상세조회
	@Override
	public Consignment selectUser(int conNo) {
		return cDAO.selectUser(conNo);
	}
	// 관리자 첨부 상세조회
	@Override
	public ArrayList<Consignment> selectAttmUserList(int conNo) {
		return cDAO.selectAttmUserList(conNo);
	}
	// 관리자 체크 삭제
	@Override
	public void checkDelete(String[] deleteIds) {
		cDAO.checkDelete(deleteIds);
	}
	// 관리자 조건 검색
	@Override
	public int searchCount2(HashMap<String, String> map) {
		return cDAO.searchCount2(map);
	}
	// 관리자 조건 검색
	@Override
	public ArrayList<Consignment> searchList2(HashMap<String, String> map, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return cDAO.searchList2(map, rowBounds);
	}
	
	
	
}
