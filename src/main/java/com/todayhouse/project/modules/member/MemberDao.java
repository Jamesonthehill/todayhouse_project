package com.todayhouse.project.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // sqlSession의 사용을 정의 SQL에서 db를 받기위한 논리적연결상태를 말함.
	
	private static String namespace = "com.todayhouse.project.modules.member.MemberMpp";
	
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public List<Member> selectList(MemberVo vo){ List<Member> list = sqlSession.selectList(namespace + ".selectList", vo); return list;}
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	// insertMemberEmail 이거 관련 함수 만드시고 그 함수를 serviceimpl 에서 호출

	
	// insert
	public int insert(Member dto){ return sqlSession.insert(namespace + ".insert", dto);}
	public int insertMemberEmail(Member dto) {  return sqlSession.insert(namespace + ".insertMemberEmail", dto);}
	public int insertMemberPhone(Member dto) {  return sqlSession.insert(namespace + ".insertMemberPhone", dto);}

	// update
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto);}
	public int updateDelete(MemberVo vo) { return sqlSession.update(namespace + ".updateDelete", vo);}
	
	
	// delete
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo);}
	
	/*
	 * public int delete(MemberVo vo) { return sqlSession.update(namespace +
	 * ".delete", vo);} public int updateDelete(MemberVo vo) { return
	 * sqlSession.update(namespace + ".updateDelete", vo);}
	 */
	
	
	
	
	
}