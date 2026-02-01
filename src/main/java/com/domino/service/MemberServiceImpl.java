package com.domino.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.domino.domain.Member;
import com.domino.domain.MemberAuth;
import com.domino.domain.Role;
import com.domino.mapper.AuthMapper;
import com.domino.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	AuthMapper authMapper;
	
	
	@Override
	@Transactional
	public void insertMember(Member member) throws Exception {

		//회원가입과 동시에 권한을 부여, 기본적으로는 NORMAL_USER 권한
		memberMapper.insertMember(member);
		MemberAuth ma = new MemberAuth(member.getNo(),Role.USER.getValue());
		authMapper.createAuth(ma);
		
		
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
