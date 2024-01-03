package com.kh.auction.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.member.dao.MemberDAO;
import com.kh.auction.user.model.vo.Address;
import com.kh.auction.user.model.vo.Member;

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
	
}
