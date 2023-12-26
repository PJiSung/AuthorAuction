package com.kh.auction.user.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.ConsignmentDAO;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;

@Service
public class ConsignmentServiceImpl implements ConsignmentService{

	@Autowired
	private ConsignmentDAO cDAO;
	
	@Override
	public int insertConsignment(Consignment c) {
		return cDAO.insertConsignment(c);
	}          

	@Override
	public int insertAttm(ArrayList<Attachment> list) {
		return cDAO.insertAttm(list);
	}

	@Override
	public Consignment selectConsignment(int conNo, String id) {
		return cDAO.selectConsignment(conNo, id);
	}

	@Override
	public ArrayList<Attachment> selectAttmConsignmentList(Integer conNo) {
		return cDAO.selectAttmConsignmentList(conNo);
	}


	
}
