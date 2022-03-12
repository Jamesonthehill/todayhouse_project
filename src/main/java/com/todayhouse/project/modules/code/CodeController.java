package com.todayhouse.project.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
//	infrCodeGroup
	@Autowired // 객체만들때 new 의역할을 한다고 보면된다.
	CodeServiceImpl service; // 서비스와 서비스임플과 혼동하지말자 이름만 서비스라고 부른다.
	
	@RequestMapping(value = "/code/codeGroupList") // 리퀘스트매핑은 브라우저 창에뜨는 주소를 말함
	public String codeGroupList(CodeVo vo, Model model) throws Exception {
		
		List<Code> list = service.selecList(vo);
		
		model.addAttribute("list", list); // codeGroupList에 있는 list를 말함 왼쪽의 이름으로 오른쪽 데이터를 보내라.
 		
		return "code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeGroupForm") // 리퀘스트매핑은 브라우저 창에뜨는 주소를 말함
	public String codeGroupForm() throws Exception {
		
		return "code/codeGroupForm";
	}
	
	@RequestMapping(value = "/code/codeGroupInst") // 인서트 삽입
	public String codeGroupInst(Code dto) throws Exception {
		
		//입력실행
		service.insert(dto);
		
		return "redirect:/code/codeGroupList";
	}
		@RequestMapping(value = "/code/codeGroupView") // 뷰.jsp에 대한 화면나옴
		public String codeGroupView(CodeVo vo, Model model) throws Exception {
			
			System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());
			//디비까지 가서 한 건의 데이터 값을 가지고 온다 , vo
			Code rt = service.selectOne(vo);
			// 가지고 온 값을 jsp로 넘겨준다
			model.addAttribute("item", rt);
			
			return "code/codeGroupView";
		
		
	}
		@RequestMapping(value = "/code/codeGroupForm2")
		public String codeGroupForm2(CodeVo vo, Model model) throws Exception {

			Code rt = service.selectOne(vo); // vo 에서 데이터 가져오기 
		
			
			model.addAttribute("rt", rt); // jsp 들어가보면 list, item, rt 등등있는데 거기에 이름과 동일한 곳에 데이터를 넣겠다.
			
			return "code/codeGroupForm2";
		}
		
		@RequestMapping(value = "/code/codeGroupUpdt")
		public String codeGroupUpdt(Code dto) throws Exception {
			
			
			service.update(dto);
			
			return "redirect:/code/codeGroupView?ifcgSeq="+dto.getIfcgSeq();  // 데이터가 넘어가면 404 파일로뜸
		
			
			
			
		// infrCode	
		}
		@RequestMapping(value = "/code/codeList") // 리퀘스트매핑은 브라우저 창에뜨는 주소를 말함
		public String codeList(CodeVo vo,Model model) throws Exception {
			
			List<Code> list = service.selecListCode(vo);
			model.addAttribute("list", list); // codeGroupList에 있는 list를 말함 왼쪽의 이름으로 오른쪽 데이터를 보내라.

			List<Code> listCodeGroup = service.selecList(vo);
			model.addAttribute("listCodeGroup", listCodeGroup); // codeGroupList에 있는 list를 말함 왼쪽의 이름으로 오른쪽 데이터를 보내라.
	 		
			
			return "code/codeList";
		}
		
		@RequestMapping(value = "/code/codeForm") // 리퀘스트매핑은 브라우저 창에뜨는 주소를 말함
		public String codeForm(Model model) throws Exception {
			
//			List <Code> list = service.selecListCode();
//			
//			model.addAttribute("list", list);
			
			return "code/codeForm";
		}
		
		@RequestMapping(value = "/code/codeInst") // 인서트 삽입
		public String codeInst(Code dto) throws Exception {
			
			//입력실행
			service.insertCode(dto);
			
			return "redirect:/code/codeList?ifcdSeq="+dto.getIfcdSeq();
		}
			@RequestMapping(value = "/code/codeView") // 뷰.jsp에 대한 화면나옴
			public String codeView(CodeVo vo, Model model) throws Exception {
				
				System.out.println("vo.getIfcdSeq():" + vo.getIfcdSeq());
				//디비까지 가서 한 건의 데이터 값을 가지고 온다 , vo
				Code rt = service.selectOneCode(vo);
				// 가지고 온 값을 jsp로 넘겨준다
				model.addAttribute("item", rt);
				
				return "code/codeView";
			
			
		}
			@RequestMapping(value = "/code/codeForm2") // 수정모드
			public String codeForm2(CodeVo vo, Model model) throws Exception {

				Code rt = service.selectOneCode(vo); // vo 에서 데이터 가져오기 
			
				
				model.addAttribute("item", rt); // jsp 들어가보면 list, item, rt 등등있는데 거기에 이름과 동일한 곳에 데이터를 넣겠다.
				
				return "code/codeForm2";
			}
			
			@RequestMapping(value = "/code/codeUpdt")
			public String codeUpdt(Code dto) throws Exception {
				
				service.updateCode(dto);

				return "redirect:/code/codeView?ifcdSeq="+dto.getIfcdSeq();  // 데이터가 넘어가면 404 파일로뜸
				
				
			}
		
	}
		
