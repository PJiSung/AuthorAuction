package com.kh.auction.member.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.auction.user.model.vo.Address;
import com.kh.auction.user.model.vo.Inquiry;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.SearchMember;

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

	int updateMember(Member m);

	int updateMemImg(Member m);

	int deleteMemImg(String id);

	int getListCount(SearchMember sm);

	ArrayList<Member> selectMemberList(SearchMember sm, PageInfo pi);

	int deleteMembers(String[] ids);

	int sortMemberList(String status);

	int updateMemberIsAdmin(Member m);

	int insertFirstAddress(Address a);

	Member selectMember(String id);

	int updateMemberByAdmin(Member m);

	String selectImg(String id);

	ArrayList<Inquiry> selectInquiryList(String id);

	int getiListCount(String id);

	ArrayList<Inquiry> selectInquiryList(String id, PageInfo iPi);
}
