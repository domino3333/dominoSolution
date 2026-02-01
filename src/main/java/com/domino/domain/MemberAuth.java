package com.domino.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MemberAuth {

	private long no;
	private String auth;
}
