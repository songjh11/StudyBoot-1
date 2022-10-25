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
		int roleResult = memberMapper.setMember(memberVO);
		return joinResult+roleResult;
				
	}
	
	public MemberVO getLogin(MemberVO memberVO) throws Exception{
		memberVO = memberMapper.getLogin(memberVO);
		return memberVO;
	}
}
