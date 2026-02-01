package com.domino.mapper;

import java.util.List;

import com.domino.domain.Member;
import com.domino.domain.SearchType;

public interface MemberMapper {
	
	
	void insertMember(Member member);
	Member selectOneMemberById(String id);
	Member selectOneMemberByNo(long no);
	Member selectMemberAuthListById(String id);
	List<Member> selectAllOfMembers();
	void updateMember(Member member);
	void deleteMember(long no);
	List<Member> searchMember(SearchType searchType);
	

}
