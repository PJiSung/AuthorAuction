package com.kh.auction.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;

@Mapper
public interface ConsignmentDAO {

	int insertConsignment(Consignment c);

	int insertAttm(ArrayList<Attachment> list);

	Consignment selectConsignment(int conNo, String id);

	ArrayList<Attachment> selectAttmConsignmentList(Integer conNo);



}
