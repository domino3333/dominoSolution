package com.domino.service;

import java.util.List;

import com.domino.domain.Member;

public interface MemberService {

	void insertMember(Member member) throws Exception;

	Member selectOneMemberByNo(long no) throws Exception;

	List<Member> selectMemberList() throws Exception;

	void updateMember(Member member) throws Exception;

	void deleteMember(long no) throws Exception;
}
