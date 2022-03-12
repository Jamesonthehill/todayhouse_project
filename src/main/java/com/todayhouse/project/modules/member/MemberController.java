package com.todayhouse.project.modules.member;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service; // 프로세스를 관리하는 애
	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model) throws Exception {

		List<Member> list = service.selectList();
		model.addAttribute("list", list);

		return "member/memberList";
	}
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}
	@RequestMapping(value = "/memberForm")
	public String memberForm1(Model model) throws Exception {
		
		return "/memberForm";
	}

	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {
		
		System.out.println("dto.getIfmmId(): " + dto.getIfmmId());
		System.out.println("dto.getIfmmName(): " + dto.getIfmmName());

		// 입력을 작동시킨다.
		int result = service.insert(dto);
		
		System.out.println("result: " + result);

		return "";
	}
	@RequestMapping(value = "/member/memberView") // 뷰.jsp에 대한 화면나옴
	public String MemberView(MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getIfmmSeq():" + vo.getIfmmSeq());
		//디비까지 가서 한 건의 데이터 값을 가지고 온다 , vo
		Member rt = service.selectOne(vo);
		// 가지고 온 값을 jsp로 넘겨준다
		model.addAttribute("item", rt);
		
		return "member/memberView";
	
	
}
	@RequestMapping(value = "/member/memberForm2")
	public String MemberForm2(MemberVo vo, Model model) throws Exception {

		Member rt = service.selectOne(vo); // vo 에서 데이터 가져오기 
	
		
		model.addAttribute("rt", rt); // jsp 들어가보면 list, item, rt 등등있는데 거기에 이름과 동일한 곳에 데이터를 넣겠다.
		
		return "member/memberForm2";
	}
	
	@RequestMapping(value = "/member/memberUpdt")
	public String MemberUpdt(Member dto) throws Exception {
		
		
		service.update(dto);
		return "";  // 데이터가 넘어가면 404 파일로뜸
	
	}
}