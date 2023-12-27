package com.kh.auction.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;


@Mapper
public interface ArtsDAO {

	ArrayList<Product> selectArtslist(RowBounds rowBounds);

	ArrayList<Wishlist> selectWishlist(String loginid);

	int getListCount();

	Product selectArts(int proNo);

	
}
