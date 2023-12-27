package com.kh.auction.user.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;

@Mapper
public interface ConsignmentDAO {

	int insertConsignment(Consignment c);

	int insertAttm(ArrayList<Attachment> list);

	Consignment selectConsignment(int conNo, String id);
         
	ArrayList<Attachment> selectAttmConsignmentList(Integer conNo);

	int getListCount(int i);

	ArrayList<Consignment> selectConsignmentList(int i, PageInfo pi);

	int searchCount(HashMap<String, String> map);

	ArrayList<Consignment> searchList(HashMap<String, String> map, RowBounds rowBounds);



}
