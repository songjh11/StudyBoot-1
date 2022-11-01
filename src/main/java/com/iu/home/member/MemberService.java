package com.iu.home.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j 
public class MemberService {

	@Autowired 
	private MemberMapper memberMapper;
	
	public int setJoin(MemberVO memberVO) throws Exception {
		int joinResult = memberMapper.setJoin(memberVO); 
		
		if(joinResult<0) {
			throw new Exception();
		}
		
		int roleResult = memberMapper.setMember(memberVO);
		
		if(roleResult<0) {
			throw new Exception();
		}
		
		return joinResult+roleResult;
				
	}
	
	public MemberVO getLogin(MemberVO memberVO) throws Exception{
		return memberMapper.getLogin(memberVO);
	}
	
	public Integer getIdCheck(MemberVO memberVO) throws Exception {
		return memberMapper.getIdCheck(memberVO);
	}
	
	//사용자 정의 검증 메서드
	public boolean getMemberError(MemberVO memberVO, BindingResult bindingResult) throws Exception{
		boolean check = false;
		//check=false : 검증 성공(error 없음)
		//check=true  : 검증 실패(error 있음)
		
		//1. annotation으로 검증하는 결과 저장
		check = bindingResult.hasErrors();
				
		//2. password가 일치하는지 검증
		if(!memberVO.getPw().equals(memberVO.getPw2())) {
			check=true;
			log.info("=============pw2check:{}",check);
			//에러메세지
			//bindingResult.rejectValue("멤버변수명(path)", "properties의 key(코드)");
			bindingResult.rejectValue("pw2", "member.password.notEqual");
		}
		
		//3. id가 중복인지 검증
		int result = memberMapper.getIdCheck(memberVO);
		if(result>0) {
			log.info("=============idcheck:{}",check);
			check=true;
			bindingResult.rejectValue("id", "member.id.notEqual");
		}
		
		return check;
	}
}
