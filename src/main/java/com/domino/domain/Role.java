package com.domino.domain;

public enum Role {

	USER("NORMAL_USER"), TEAM_LEADER("TEAM_LEADER") ,ADMIN("ADMIN");

	private final String value;

	Role(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}
}
