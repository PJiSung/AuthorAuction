package com.kh.auction.user.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.auction.user.model.vo.Order;
import com.kh.auction.user.model.vo.Product;
import com.kh.auction.user.model.vo.Wishlist;


@Mapper
public interface ArtsDAO {

	ArrayList<Product> selectArtslist(RowBounds rowBounds);

	ArrayList<Wishlist> selectWishlist(String loginid);

	int getListCount();

	Product selectArts(int proNo);

	int updatewishlist(Wishlist updatewis);

	int deletewis(Wishlist deletewis);

	int deletewishlist(HashMap<String, Object> map);

	int insertOrder(Order order);

	int deletewisAll(String loginid);

	int insertOrderDetail(HashMap<String, Object> map);


	
}
