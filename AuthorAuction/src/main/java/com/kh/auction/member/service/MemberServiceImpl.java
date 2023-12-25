package com.kh.auction.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.auction.member.dao.MemberDAO;
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
	public int findIdbyPhone(Member m) {
		return mDao.findIdbyPhone(m);
	}
	
}
