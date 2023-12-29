package com.kh.auction.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.user.model.vo.Order;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;

public interface ArtsService {

	ArrayList<Product> selectArtslist(PageInfo pi);

	ArrayList<Wishlist> selectWishlist(String loginid);

	int getlistCount();

	Product selectArts(int proNo);

	int updatewishlist(Wishlist updatewis);

	int deletewis(Wishlist deletewis);

	int deletewishlist(HashMap<String, Object> map);

	int insertOrder(Order order);

	int deletewisAll(String loginid);

	int insertOrderDetail(HashMap<String, Object> map);

	int addtowishlist(Wishlist addwis);




}
