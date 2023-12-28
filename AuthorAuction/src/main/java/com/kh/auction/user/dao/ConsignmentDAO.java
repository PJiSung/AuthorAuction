package com.kh.auction.user.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Consignment;
import com.kh.auction.user.model.vo.PageInfo;

@Mapper
public interface ConsignmentDAO {

	int insertConsignment(Consignment c);

	int insertAttm(ArrayList<Attachment> list);

	int getListCount(String memId);

	ArrayList<Consignment> selectConsignmentList(int i, PageInfo pi, RowBounds rowBounds);

	int searchCount(HashMap<String, String> map);

	ArrayList<Consignment> searchList(HashMap<String, String> map, RowBounds rowBounds);

	Consignment selectConsignment(int conNo);

	ArrayList<Attachment> selectAttmConsignmentList(int conNo);

	ArrayList<Consignment> selectConsignmentList(String memId, RowBounds rowBounds);

	int deleteConsignment(int conNo);

	int statusNConsignment(int conNo);





}
