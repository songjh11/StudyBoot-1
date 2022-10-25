package com.iu.home.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member/*")
@Slf4j
public class MemberController {
	@Autowired
	private MemberService memberService; 

	@GetMapping("add")
	public String readyJoin() {
		return "member/add";
	}
	
	@PostMapping("add")
	public String setJoin(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
		log.info("membervo:{}", memberVO);
		int result = memberService.setJoin(memberVO); 
		redirectAttributes.addAttribute("result", result);
		return "redirect:./login";
	}
	
	@GetMapping("login")
	public String readyLogin() throws Exception{
		return "member/login";
	}
	
	@PostMapping("login")
	public ModelAndView getLogin(MemberVO memberVO, HttpServletRequest request) throws Exception{
		log.info("memberVO:{}", memberVO.getId());
		memberVO = memberService.getLogin(memberVO); 
		log.info("memberVOemail:{}",memberVO.getEmail());
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		session.setAttribute("member", memberVO);
		mv.addObject("VO", memberVO);
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("logout")
	public String logout (HttpSession session) throws Exception{
		session.invalidate();  
		
		return "redirect:../"; 
	}
}
