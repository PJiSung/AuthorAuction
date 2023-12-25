package com.kh.auction.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.InquiryDAO;
import com.kh.auction.user.model.vo.Inquiry;

@Service
public class InquiryServiceImpl implements InquiryService{
	
	@Autowired
	InquiryDAO iDao;

	@Override
	public void insertInquiry(Inquiry inq) {
		iDao.insertInquiry(inq);
	}
	
}
