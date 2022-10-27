package com.iu.home.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
