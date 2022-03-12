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
	
	public List<Member> selectList(){ return sqlSession.selectList(namespace + ".selectList", "");}
	public int insert(Member dto){ return sqlSession.insert(namespace + ".insert", dto);	}
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto);}
}