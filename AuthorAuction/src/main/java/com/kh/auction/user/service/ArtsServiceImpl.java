package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.user.dao.ArtsDAO;
import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;


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
	public ArrayList<Wishlist> selectWishlist(String loginid){
		
		return aDAO.selectWishlist(loginid);
	}

	@Override
	public int getlistCount() {
		
		return aDAO.getListCount();
	}
	
	@Override
	public Product selectArts(int proNo) {
		
		return aDAO.selectArts(proNo);
		
	}
	
	@Override
	public int updatewishlist(Wishlist updatewis) {
		
		return aDAO.updatewishlist(updatewis);
	}
	
	@Override
	public int deletewis(Wishlist deletewis) {
		
		
		return aDAO.deletewis(deletewis);
	}
	
	@Override
	public int deletewishlist(HashMap<String, Object> map) {
		
		return aDAO.deletewishlist(map);
	}
}
