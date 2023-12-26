package com.kh.auction.arts.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.auction.arts.vo.Product;
import com.kh.auction.arts.vo.Wishlist;


@Mapper
public interface ArtsDAO {

	ArrayList<Product> selectArtslist(RowBounds rowBounds);

	ArrayList<Wishlist> selectWishlist();

	int getListCount();

	Product selectArts(int proNo);

	
}
