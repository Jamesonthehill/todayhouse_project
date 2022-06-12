package com.todayhouse.project.modules.member;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todayhouse.project.common.util.UtilDateTime;


@Service
public class MemberServiceImpl implements MemberService {

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
	public List<Member> selectListNation() throws Exception {
		return dao.selectListNation();
	}

	@Override
	public int insert(Member dto) throws Exception {
		/* dto.setRegDateTime(UtilDateTime.nowDate()); */

		dto.setRegDateTime(UtilDateTime.nowDate());
		
		dao.insert(dto); // 순서대로 하는거 잊지마셈.
		dao.insertMemberPhone(dto);
		dao.insertMemberEmail(dto);
		dao.insertMemberAddress(dto);
		dao.insertMemberNationality(dto);
		// email 과련 함수 호출
		
		
		return 1;

	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {

		return dao.selectOne(vo);
	}

	@Override
	public int update(Member dto) throws Exception {

		dao.update(dto);
		dao.updateNumber(dto);
		dao.updateEmail(dto);
		dao.updateMemberAddress(dto);
		dao.updateMemberNationality(dto);

		return 1;
	}

	@Override
	public int delete(MemberVo vo) throws Exception {

		dao.deleteNationality(vo);
		dao.deleteAddress(vo);
		dao.deleteNumber(vo);
		dao.deleteEmail(vo);
		dao.delete(vo);

		return 1;
	}

	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}
	@Override
	public Member selectOneProfile(Member dto) throws Exception {
		return dao.selectOneProfile(dto);
	}
	/*
	 * @Override public Member selectGender(MemberVo vo) throws Exception { return
	 * dao.selectGender(vo); }
	 */

}