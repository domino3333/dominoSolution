package com.domino.service;

import java.util.List;

import com.domino.domain.Member;
import com.domino.domain.SearchType;

public interface MemberService {

	void insertMember(Member member) throws Exception;

	Member selectOneMemberByNo(long no) throws Exception;
	
	Member selectOneMemberById(String id) throws Exception;

	List<Member> selectMemberList() throws Exception;

	void updateMember(Member member) throws Exception;

	void deleteMember(long no) throws Exception;

	Member login(String id, String pw) throws Exception;

	List<Member> searchMembers(SearchType searchType);
}
