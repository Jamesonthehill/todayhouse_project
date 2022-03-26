package com.todayhouse.project.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	@Override
	public int insert(Member dto) throws Exception {
		dao.insert(dto);   // 순서대로 하는거 잊지마셈.
		dao.insertMemberPhone(dto);
		dao.insertMemberEmail(dto); 
		// email 과련 함수 호출
		return 1;
				
	}
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		
		return dao.selectOne(vo);
	}
	@Override
	public int update(Member dto) throws Exception {
		
		return dao.update(dto);
	}
	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}
	
}