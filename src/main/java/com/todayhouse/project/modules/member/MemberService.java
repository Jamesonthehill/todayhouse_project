package com.todayhouse.project.modules.member;

import java.util.List;


public interface MemberService {
	
	public int selectOneCount(MemberVo vo) throws Exception;
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public Member selectOne(MemberVo vo) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;  // 로그인
	public List<Member> selectListNation() throws Exception; 
	/* public Member selectGender(MemberVo vo) throws Exception; */

	
	//insert
	public int insert(Member dto) throws Exception; 
	
	
	
	//update
	public int update(Member dto) throws Exception;
	public int updateDelete(MemberVo vo) throws Exception;
	// delete
	
	
	public int delete(MemberVo vo) throws Exception;
	
	/*
	 * public int deleteId(MemberVo vo) throws Exception; public int
	 * deleteName(MemberVo vo) throws Exception; public int deleteNumber(MemberVo
	 * vo) throws Exception; public int deleteEmail(MemberVo vo) throws Exception;
	 */
	/*
	 * public int delete(MemberVo vo) throws Exception; public int
	 * updateDelete(MemberVo vo) throws Exception;
	 */}