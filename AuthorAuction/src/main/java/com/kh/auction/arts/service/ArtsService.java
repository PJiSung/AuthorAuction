package com.kh.auction.arts.service;

import java.util.ArrayList;

import com.kh.auction.admin.model.vo.PageInfo;
import com.kh.auction.arts.vo.Product;
import com.kh.auction.arts.vo.Wishlist;

public interface ArtsService {

	ArrayList<Product> selectArtslist(PageInfo pi);

	ArrayList<Wishlist> selectWishlist();

	int getlistCount();

	Product selectArts(int proNo);



}
