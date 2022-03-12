package com.todayhouse.project.modules.code;

import java.util.List;

public interface CodeService {
	
	// infrCodeGroup  //다오에 있는 생성자를 여기에 맞게 고쳐주면된다.
	public List<Code> selecList(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public int update(Code dto) throws Exception;

	// infrCodeGroup  
	public List<Code> selecListCode(CodeVo vo) throws Exception;   
	public int insertCode(Code dto) throws Exception;
	public Code selectOneCode(CodeVo vo) throws Exception;
	public int updateCode(Code dto) throws Exception;
}