package com.todayhouse.project.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todayhouse.project.common.constants.Constants;
import com.todayhouse.project.common.util.UtilDateTime;


@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service; // 프로세스를 관리하는 애
	
	@RequestMapping(value = "/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	
		int count = service.selectOneCount(vo);
		
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  
		/*		 UtilDateTime.addStringTime(vo.getShDateStart()));*/		
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
		
		vo.setParamsPaging(count);
		
		/* vo.setParamsPaging(service.selectOneCount); */
		
		if(count != 0) {
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		} else {
			
		}
		return "member/memberList";
	}
	@RequestMapping(value = "/member/loginForm")
	public String loginForm() throws Exception {
		
		
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		System.out.println("dto.thisPage(): " + vo.getThisPage());
		
		return "member/memberForm";
	}

	@RequestMapping(value = "/member/memberInst", method = RequestMethod.POST)
	public String memberInst(Model model, Member dto) throws Exception {
		
		System.out.println("dto.getIfmmId(): " + dto.getIfmmId());
		System.out.println("dto.getIfmmName(): " + dto.getIfmmName());
		System.out.println("dto.getRegDateTime(): " + dto.getRegDateTime());
		System.out.println("dto.getIfmpNumber(): " + dto.getIfmpNumber());
		System.out.println("dto.getIfmeEmailFull(): " + dto.getIfmeEmailFull());

		// 입력을 작동시킨다.
		int result = service.insert(dto);
		
		System.out.println("result: " + result);

		return "redirect:/member/memberList?ifmmSeq="+dto.getIfmmSeq();
	}
	@RequestMapping(value = "/member/memberView") // 뷰.jsp에 대한 화면나옴
	public String MemberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getIfmmSeq():" + vo.getIfmmSeq());
		System.out.println("vo.getIfmmId():" + vo.getIfmmId());
		System.out.println("vo.getIfmmName():" + vo.getIfmmName());
		//디비까지 가서 한 건의 데이터 값을 가지고 온다 , vo
		Member rt = service.selectOne(vo);
		// 가지고 온 값을 jsp로 넘겨준다
		model.addAttribute("rt", rt);
		
		return "member/memberView";
	}

	/*
	 * @RequestMapping(value = "/member/memberEdit") // edit.jsp에 대한 화면나옴 public
	 * String MemberEdit(MemberVo vo, Model model) throws Exception {
	 * 
	 * //디비까지 가서 한 건의 데이터 값을 가지고 온다 , vo Member rt = service.selectOne(vo); // 가지고 온
	 * 값을 jsp로 넘겨준다 model.addAttribute("rt", rt);
	 * 
	 * return "member/memberEdit";
	 * 
	 * }
	 */
	
	@RequestMapping(value = "/member/memberEdit")
	public String memberEdit(MemberVo vo, Model model) throws Exception {

		System.out.println("dto.getIfmmSeq():" + vo.getIfmmSeq());
		System.out.println("dto.getIfmmId():" + vo.getIfmmId());
		System.out.println("dto.getIfmmName():" + vo.getIfmmName());
		System.out.println("dto.getIfmpNumber():" + vo.getIfmpNumber());
		System.out.println("dto.getIfmeEmailFull():" + vo.getIfmeEmailFull());	
		
		Member rt = service.selectOne(vo); // vo 에서 데이터 가져오기 
	
		
		model.addAttribute("rt", rt); // jsp 들어가보면 list, item, rt 등등있는데 거기에 이름과 동일한 곳에 데이터를 넣겠다.
		
		return "member/memberEdit";
	}
	
	/*
	 * @RequestMapping(value = "/member/memberForm2") public String
	 * MemberForm2(MemberVo vo, Model model) throws Exception {
	 * 
	 * Member rt = service.selectOne(vo); // vo 에서 데이터 가져오기
	 * 
	 
	 * model.addAttribute("rt", rt); // jsp 들어가보면 list, item, rt 등등있는데 거기에 이름과 동일한
	 * 곳에 데이터를 넣겠다.
	 * 
	 * return "member/memberForm2"; }
	 */
	
	@RequestMapping(value = "/member/memberUpdt")
	public String MemberUpdt(Member dto, MemberVo vo) throws Exception {
		
		System.out.println("dto.getIfmmSeq():" + dto.getIfmmSeq());
		System.out.println("dto.getIfmmId():" + dto.getIfmmId());
		System.out.println("dto.getIfmmName():" + dto.getIfmmName());
		System.out.println("dto.getIfmpNumber():" + dto.getIfmpNumber());
		System.out.println("dto.getIfmeEmailFull():" + dto.getIfmeEmailFull());		
		
		
		service.update(dto); // 데이터를 받아오고

		return "redirect:/member/memberView?ifmmSeq="+dto.getIfmmSeq();  // 업데이트 해주는 영역
	
	}
	@RequestMapping(value = "/member/memberListDele")
	public String memberListDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("vo.getIfmmSeq():" + vo.getIfmmSeq());
		System.out.println("vo.getIfmmId():" + vo.getIfmmId());
		System.out.println("vo.getIfmmName():" + vo.getIfmmName());
		System.out.println("vo.getIfmpNumber():" + vo.getIfmpNumber());
		System.out.println("vo.getIfmeEmailFull():" + vo.getIfmeEmailFull());
		
		service.delete(vo); // 데이터를 받아오고
		
		
		
		/*
		 * redirectAttributes.addAttribute("thisPage" + vo.getThisPage());
		 * redirectAttributes.addAttribute("shOption" + vo.getShOption());
		 * redirectAttributes.addAttribute("shValue" + vo.getShValue());
		 */
		
		return "redirect:/member/memberList?=" + vo.getIfmmSeq();
	//	return "redirect:/member/memberList?shifmmSeq="+vo.getIfmmSeq();  // 업데이트 해주는 영역
		
	}
	@RequestMapping(value = "/member/memberListNele")
	public String memberListNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.updateDelete(vo); // 데이터를 받아오고
		
		/*
		 * redirectAttributes.addAttribute("thisPage" + vo.getThisPage());
		 * redirectAttributes.addAttribute("shOption" + vo.getShOption());
		 * redirectAttributes.addAttribute("shValue" + vo.getShValue());
		 */
		
		return "redirect:/member/memberList?shifmmSeq="+vo.getIfmmSeq();  // 업데이트 해주는 영역
		
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/member/loginProc") public Map<String, Object>
	 * loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectOneLogin(dto);
	 * 
	 * if(rtMember != null) { // rtMember = service.selectOneLogin(dto);
	 * 
	 * if(rtMember.getIfmmSeq() != null) { //ref session.setMaxInactiveInterval(-1);
	 * // session time unlimited
	 * 
	 * httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
	 * httpSession.setAttribute("sessId", rtMember.getIfmmId());
	 * httpSession.setAttribute("sessName", rtMember.getIfmmName());
	 * 
	 * returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); } }
	 * else { returnMap.put("rt", "fail"); } return returnMap; }
	 */
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);

		if(rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);
		if(rtMember2 != null) {
		
			httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
			httpSession.setAttribute("sessId", rtMember2.getIfmmId());
			httpSession.setAttribute("sessName", rtMember2.getIfmmName());
		
			
					
		//	rtMember2.setIflgResultNy(1);
		//	service.insertLogLogin(rtMember2);
		}
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
		@ResponseBody
		@RequestMapping(value = "/member/logoutProc")
		public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
	
			httpSession.invalidate();
			
			returnMap.put("rt",  "success");
			
			return returnMap;
		}
			
			
}