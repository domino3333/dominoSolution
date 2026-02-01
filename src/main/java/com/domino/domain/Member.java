package com.domino.domain;

import java.util.List;

import lombok.Data;

@Data
public class Member {

	private long no;
	private String id;
	private String pw;
	private String name;
	private String age;
	private String birthday;
	private String gender;
	
	List<MemberAuth> memberAuthList;
	
}
