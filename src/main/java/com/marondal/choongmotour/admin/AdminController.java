package com.marondal.choongmotour.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping("/signup/view")
	public String signupInput() {
		
		return "/admin/signup";
		
	}

	@GetMapping("/signin/view")
	public String signinInput() {
		
		return "/admin/signin";
		
	}
	@GetMapping("/signout")
	public String signout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("adminId");
		session.removeAttribute("adminNickname");
		session.removeAttribute("adminImagePath");
		
		
		return "redirect:/admin/signin/view";
		
	}
	
	
	@GetMapping("/find_id_pw/view")
	public String findIdPw() {
		return "admin/find_id_pw";
	}
	
	@GetMapping("/main/view")
	public String mainPage() {
		return "admin/main";
	}
	
	@GetMapping("/lodging/create/view")
	public String createPage() {
		return "admin/create";
	}
	
	@GetMapping("/lodging/update/view")
	public String updatePage() {
		return "admin/update";
	}
	
	@GetMapping("/mypage/view")
	public String myPage() {
		return "admin/mypage";
	}

}
