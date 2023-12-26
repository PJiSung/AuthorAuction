package com.kh.auction.arts.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.arts.dao.ArtsDAO;
import com.kh.auction.arts.vo.Product;
import com.kh.auction.arts.vo.Wishlist;


@Service
public class ArtsServiceImpl implements ArtsService {
	
	@Autowired
	ArtsDAO aDAO;
	
	@Override
	public ArrayList<Product> selectArtslist(PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return aDAO.selectArtslist(rowBounds);
	}
	
	@Override
	public ArrayList<Wishlist> selectWishlist(){
		
		return aDAO.selectWishlist();
	}

	@Override
	public int getlistCount() {
		
		return aDAO.getListCount();
	}
	
	@Override
	public Product selectArts(int proNo) {
		
		return aDAO.selectArts(proNo);
		
	}
}
