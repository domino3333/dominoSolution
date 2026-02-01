package com.domino.controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domino.domain.Member;
import com.domino.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/domino")
@MapperScan(basePackages = "com.domino.mapper")
public class mainController {

	@Autowired
	MemberService memberService;
	
	@GetMapping("/main")
	public String dominoMain() {
		return "domino/main";
	}
	
	@GetMapping("/signUpForm")
	public String registerForm() {
		
		return "domino/signUpForm";
	}
	
	@PostMapping("/signup")
	public String signup(Member member) {
		//todo 회원정보를 db에 인서트하기
		
		try {
			memberService.insertMember(member);
		} catch (Exception e) {
			log.info("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		return "domino/signUpResult";
		
	}
	
	
	
	
	
	
}
