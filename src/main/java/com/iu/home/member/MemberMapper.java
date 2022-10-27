package com.iu.home.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public int setJoin(MemberVO memberVO) throws Exception; 
	
	public int setMember(MemberVO memberVO) throws Exception; 
	
	public MemberVO getLogin(MemberVO memberVO) throws Exception; 
	
	public Integer getIdCheck(MemberVO memberVO) throws Exception;
	
}
