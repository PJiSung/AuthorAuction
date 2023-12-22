package com.kh.auction.member.service;

import com.kh.auction.user.vo.Member;

public interface MemberService {

	int insertMemeber(Member m);

	int checkId(String memId);

	int checkNickName(String memNickName);

	Member login(Member m);

}
