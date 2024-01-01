package com.kh.auction.member.service;

import java.util.ArrayList;

import com.kh.auction.user.model.vo.Address;
import com.kh.auction.user.model.vo.Member;

public interface MemberService {

	int insertMemeber(Member m);

	int checkId(String memId);

	int checkNickName(String memNickName);

	Member login(Member m);

	Member findMyInfo(Member m);

	int updatePwd(Member m);

	int insertAddress(Address a);

	ArrayList<Address> selectAddressList(String id);

	Address selectAddress(int addNo);

	int updateAddress(Address a);

	int deleteMember(String memId);

	int deleteAddress(int addNo);
}
