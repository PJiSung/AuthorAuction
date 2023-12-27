package com.kh.auction.user.service;

import java.util.ArrayList;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;

public interface ArtsService {

	ArrayList<Product> selectArtslist(PageInfo pi);

	ArrayList<Wishlist> selectWishlist(String loginid);

	int getlistCount();

	Product selectArts(int proNo);

	int updatewishlist(Wishlist updatewis);



}
