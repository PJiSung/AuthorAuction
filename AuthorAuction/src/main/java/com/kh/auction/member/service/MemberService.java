package com.kh.auction.member.service;

import com.kh.auction.user.model.vo.Member;

public interface MemberService {

	int insertMemeber(Member m);

	int checkId(String memId);

	int checkNickName(String memNickName);

	Member login(Member m);

	Member findMyInfo(Member m);

	int updatePwd(Member m);

}
