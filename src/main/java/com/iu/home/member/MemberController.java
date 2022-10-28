package com.iu.home.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String readyJoin(@ModelAttribute MemberVO memberVO) throws Exception {
		//MemberVO memberVO = new MemberVO();
		//model.addAttribute("vo",memberVO);
		return "member/add";
	}
	
	@PostMapping("add")
	public ModelAndView setJoin(ModelAndView mv, @Valid MemberVO memberVO, BindingResult bindingResult) throws Exception {
		if(bindingResult.hasErrors()) {
			log.info("============검증 에러 발생===============");
			//검증 실패하면 회원 가입하는 jsp로 이동
			mv.setViewName("member/add");
			return mv;
		}
//		int result = memberService.setJoin(memberVO); 
		mv.setViewName("redirect:./login");
		return mv;
	}
	
	@GetMapping("login")
	public String readyLogin() throws Exception{
		return "member/login";
	}
	
	@PostMapping("login")
	public String getLogin(MemberVO memberVO, HttpSession session) throws Exception{
		memberVO = memberService.getLogin(memberVO); 
		session.setAttribute("member", memberVO);
		return "redirect:../";
	}
	
	@GetMapping("logout")
	public String logout (HttpSession session) throws Exception{
		session.invalidate();  
		
		return "redirect:../"; 
	}
	
	@GetMapping("idCheck")
	@ResponseBody
	public int getIdCheck(MemberVO memberVO) throws Exception {
		int result = memberService.getIdCheck(memberVO);
		if(result==0) {
			throw new Exception();
		}
		return result;
	}
	
	@PostMapping("test")
	@ResponseBody
	public MemberVO setTest(MemberVO memberVO, String [] ar) throws Exception {
		log.info("=================================================");
		log.info("ID: {}", memberVO.getId());
		log.info("NAME:{}", memberVO.getName());
		for(String a: ar) {
			log.info("ar : {}", a);			
		}
		
		return memberVO;
	}
	
}
