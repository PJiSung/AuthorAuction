package com.kh.auction.member.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.member.dao.MemberDAO;
import com.kh.auction.user.model.vo.Address;
import com.kh.auction.user.model.vo.Inquiry;
import com.kh.auction.user.model.vo.Member;
import com.kh.auction.user.model.vo.PageInfo;
import com.kh.auction.user.model.vo.SearchMember;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO mDao;

	@Override
	public int insertMemeber(Member m) {
		return mDao.insertMember(m);
	}

	@Override
	public int checkId(String memId) {
		return mDao.checkId(memId);
	}

	@Override
	public int checkNickName(String memNickName) {
		return mDao.checkNickName(memNickName);
	}

	@Override
	public Member login(Member m) {
		return mDao.login(m);
	}

	@Override
	public Member findMyInfo(Member m) {
		return mDao.findMyInfo(m);
	}

	@Override
	public int updatePwd(Member m) {
		return mDao.updatePwd(m);
	}

	@Override
	public int insertAddress(Address a) {
		int result = 0;
		if(a.getAddDefault().equals("Y")) {
			Address updateA = new Address();
			updateA.setAddDefault("N");
			updateA.setMemId(a.getMemId());
			result = mDao.updateAddressDefault(updateA);
			
			if(result > 0) {
				return mDao.insertAddress(a);
			}else {
				return 0;
			}
		}else {
			return mDao.insertAddress(a);
		}
	}

	@Override
	public ArrayList<Address> selectAddressList(String id) {
		return mDao.selectAddressList(id);
	}

	@Override
	public Address selectAddress(int addNo) {
		return mDao.selectAddress(addNo);
	}

	@Override
	public int updateAddress(Address a) {
		int result = 0;
		if(a.getAddDefault().equals("Y")) {
			Address updateA = new Address();
			updateA.setAddDefault("N");
			updateA.setMemId(a.getMemId());
			result = mDao.updateAddressDefault(updateA);
			
			if(result > 0) {
				return mDao.updateAddress(a);
			}else {
				return 0;
			}
		}else {
			return mDao.updateAddress(a);
		}
	}

	@Override
	public int deleteMember(String memId) {
		return mDao.deleteMember(memId);
	}

	@Override
	public int deleteAddress(int addNo) {
		return mDao.deleteAddress(addNo);
	}

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}

	@Override
	public int updateMemImg(Member m) {
		return mDao.updateMemImg(m);
	}

	@Override
	public int deleteMemImg(String id) {
		return mDao.deleteMemImg(id);
	}

	@Override
	public int getListCount(SearchMember sm) {
		return mDao.getListCount(sm);
	}

	@Override
	public ArrayList<Member> selectMemberList(SearchMember sm, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mDao.selectMemberList(sm, rowBounds);
	}

	@Override
	public int deleteMembers(String[] ids) {
		return mDao.deleteMembers(ids);
	}

	@Override
	public int sortMemberList(String status) {
		return mDao.sortMemberList(status);
	}

	@Override
	public int updateMemberIsAdmin(Member m) {
		return mDao.updateMemberIsAdmin(m);
	}

	@Override
	public int insertFirstAddress(Address a) {
		return mDao.insertAddress(a);
	}

	@Override
	public Member selectMember(String id) {
		return mDao.selectMember(id);
	}

	@Override
	public int updateMemberByAdmin(Member m) {
		return mDao.updateMemberByAdmin(m);
	}

	@Override
	public String selectImg(String id) {
		return mDao.selectImg(id);
	}

	@Override
	public ArrayList<Inquiry> selectInquiryList(String id) {
		return mDao.selectInquiryList(id);
	}

	@Override
	public int getiListCount(HashMap<String, Object> map) {
		return mDao.getiListCount(map);
	}

	@Override
	public ArrayList<Inquiry> selectInquiryList(HashMap<String, Object> map, PageInfo iPi) {
		int offset = (iPi.getCurrentPage() -1)*iPi.getBoardLimit();
		int limit = iPi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
	
		return mDao.selectInquiryList(map, rowBounds);
	}
	
}
