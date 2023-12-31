package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.user.dao.ArtsDAO;
import com.kh.auction.user.model.vo.Address;
import com.kh.auction.user.model.vo.Attachment;
import com.kh.auction.user.model.vo.Order;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;


@Service
public class ArtsServiceImpl implements ArtsService {
	
	@Autowired
	ArtsDAO aDAO;
	
	@Override
	public ArrayList<Product> selectArtslist(PageInfo pi,HashMap<String, Object> map){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return aDAO.selectArtslist(rowBounds,map);
	}
	
	@Override
	public ArrayList<Wishlist> selectWishlist(String loginid){
		
		return aDAO.selectWishlist(loginid);
	}

	@Override
	public int getlistCount(HashMap<String, Object> map) {
		
		return aDAO.getListCount(map);
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
	
	@Override
	public int insertOrder(Order order) {
		
		return aDAO.insertOrder(order);
	}
	
	@Override
	public int insertOrderwithalreadyaddr(Order order) {
		
		return aDAO.insertOrderwithalreadyaddr(order);
	}
	
	@Override
	public int deletewisAll(String loginid) {
		
		return aDAO.deletewisAll(loginid);
	}
	
	@Override
	public int insertOrderDetail(HashMap<String, Object> map) {
		
		
		return aDAO.insertOrderDetail(map);
	}
	
	@Override
	public int addtowishlist(Wishlist addwis) {
		
		return aDAO.addtowishlist(addwis);
	}
	
	@Override
	public int selectWish(Wishlist w) {
		
		
		return aDAO.selectWish(w);
	}
	
	@Override
	public int updatepointBonus(HashMap<String, Object> pm) {
		
		
		return aDAO.updatepointBonus(pm);
	}
	
	@Override
	public int updateProductamount(HashMap<String, Object> map) {
		
		
		return aDAO.updateProductamount(map);
	}
	
	
	@Override
	public int insertAddress(HashMap<String, Object> rmap) {
		
		return aDAO.insertAddress(rmap);
		
	}
	
	
	@Override
	public int updatePoint(HashMap<String, Object> map) {
		
		
		
		return aDAO.updatePoint(map);
	}
	
	
	
	@Override
	public ArrayList<Address> selectAddresslist(String memId){
		
		
		return aDAO.selectAddresslist(memId);
		
	}
	
	
	@Override
	public ArrayList<Attachment> selectAttmlist(ArrayList<Product> plist){
		
		
		return aDAO.selectAttmlist(plist);
	}
	
	@Override
	public int selectPoint(String memId) {
		
		return aDAO.selectPoint(memId);
	}
	
	
	@Override
	public 	int getlistCountadmin(HashMap<String, Object> map) {
		
		
		
		return aDAO.getlistCountadmin(map);
	}
	
	@Override
	public ArrayList<Product> selectArtslistadmin(PageInfo pi, HashMap<String, Object> map){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return aDAO.selectArtslistadmin(rowBounds,map);
		
	}
	
}
