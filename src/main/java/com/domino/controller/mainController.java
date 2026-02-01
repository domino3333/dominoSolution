package com.domino.controller;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domino.domain.Member;
import com.domino.domain.MemberAuth;
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
		// todo 회원정보를 db에 인서트하기

		try {
			memberService.insertMember(member);
		} catch (Exception e) {
			log.info("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		return "domino/signUpResult";

	}

	@PostMapping("/login")
	public String login(String id, String pw, Model model) {
		try {
			Member member = memberService.login(id, pw);
			log.info(member.getMemberAuthList().toString());

			if (member != null) {
				for (MemberAuth auth : member.getMemberAuthList()) {
					if (auth.getAuth().equals("ADMIN")) {
						// todo userlist를 받아와야함
						List<Member> memberList = memberService.selectMemberList();
						model.addAttribute("memberList", memberList);

						return "domino/adminPage";
					}
				}

				return "domino/userPage";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("message", "없는 아이디거나 비밀번호가 틀립니다.");
		return "domino/main";
	}

	@GetMapping("/memberDetail/{no}")
	public String memberDetail(@PathVariable int no, Model model) {
		log.info("sdf");
		// no 변수를 매개로 한명의 멤버 받아오기
		try {
			Member member = memberService.selectOneMemberByNo(no);
			log.info("sdf");
			model.addAttribute("member", member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "domino/memberDetail";
	}

	@GetMapping("/memberEdit/{no}")
	public String memberEdit(@PathVariable int no, Model model) {
		try {
			Member member = memberService.selectOneMemberByNo(no);
			model.addAttribute("member", member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "domino/memberEdit";
	}

	@PostMapping("/memberUpdate/{no}")
	public String memberUpdate(@PathVariable int no, Model model, Member member) {
		// 멤버 업데이트
		try {
			memberService.updateMember(member);
			List<Member> memberList = memberService.selectMemberList();
			model.addAttribute("memberList", memberList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "domino/adminPage";
	}

}
