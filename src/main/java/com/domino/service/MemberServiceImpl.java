package com.domino.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.domino.domain.Member;
import com.domino.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	@Override
	@Transactional
	public void insertMember(Member member) throws Exception {

		memberMapper.insertMember(member);
		
	}

	@Override
	public Member selectOneMemberByNo(long no) throws Exception {
		return null;
	}

	@Override
	public List<Member> selectMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(Member member) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMember(long no) throws Exception {
		// TODO Auto-generated method stub

	}

}
