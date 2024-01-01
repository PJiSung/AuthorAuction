package com.kh.auction.member.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.kh.auction.user.model.vo.Address;
import com.kh.auction.user.model.vo.Member;

@Mapper
public interface MemberDAO {

	int insertMember(Member m);

	int checkId(String memId);

	int checkNickName(String memNickName);

	Member login(Member m);

	Member findMyInfo(Member m);

	int updatePwd(Member m);

	int insertAddress(Address a);

	ArrayList<Address> selectAddressList(String id);

	int updateAddressDefault(Address updateA);

	Address selectAddress(int addNo);

	int updateAddress(Address a);

	int deleteMember(String memId);

	int deleteAddress(int addNo);
}
