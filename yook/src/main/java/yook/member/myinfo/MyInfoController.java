package yook.member.myinfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import yook.common.map.CommandMap;
import yook.member.myinfo.MyInfoService;
import yook.member.myorder.MyOrderService;

@Controller
public class MyInfoController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "myInfoService")
	private MyInfoService myInfoService;

	@Resource(name = "myOrderService")
	private MyOrderService myOrderService;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	@RequestMapping(value = "/openMyInfoForm.do")
	public ModelAndView openMyInfoForm(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("myInfoForm");
		HttpSession session = request.getSession();
		commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
		commandMap.put("MEM_NUM", ((Map) session.getAttribute("session_MEMBER")).get("MEM_NUM"));
		Map<String, Object> map = myInfoService.selectMyInfoForm(commandMap.getMap());
		Map<String, Object> map1 = myOrderService.myOrderStatus(commandMap.getMap());

		List<Map<String, Object>> list = myOrderService.openMyOrderList(commandMap.getMap());
		mv.addObject("list", list);

		mv.addObject("map", map);
		mv.addObject("map1", map1);

		return mv;
	}

//	   
//	   @RequestMapping(value="/member/updateMyInfoForm.do") 
//	   public ModelAndView updateMyInfoForm(CommandMap commandMap, HttpServletRequest request) throws Exception{
//	      ModelAndView mv = new ModelAndView("/member/myInfoModifyForm");
//	      HttpSession session = request.getSession();
//	      commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
//	      Map<String, Object> map = myInfoService.updateMyInfoForm(commandMap.getMap());
//	      mv.addObject("map", map);   
//	      
//	      return mv;
//	   }

	@RequestMapping(value = "/updateMyInfo.do")
	public ModelAndView updateMyInfo(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/openMyInfoForm.do");
		HttpSession session = request.getSession();
		commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
		
		String rawPw = "";            // 인코딩 전 비밀번호
	     String encodePw = "";        // 인코딩 후 비밀번호
		
	     rawPw = commandMap.getMap().get("MEM_PW").toString();
	     System.out.println(rawPw);
	     encodePw = pwEncoder.encode(rawPw);
	     
	     commandMap.getMap().put("MEM_PW", encodePw);
		
		
		myInfoService.updateMyInfo(commandMap.getMap());

		return mv;
	}
	
	/*
		@RequestMapping(value="/member/insertJoin.do")
		public ModelAndView insertJoin(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/LoginForm.do");
		
		
		
		 String rawPw = "";            // 인코딩 전 비밀번호
	     String encodePw = "";        // 인코딩 후 비밀번호
		
	     rawPw = commandMap.getMap().get("MEM_PW").toString();
	     System.out.println(rawPw);
	     encodePw = pwEncoder.encode(rawPw);
	     
	     commandMap.getMap().put("MEM_PW", encodePw);
	     
	     joinService.insertJoin(commandMap.getMap());
		
		
		return mv;
	}
	
	
	*/

	@RequestMapping(value = "/deleteMyInfo.do")
	public ModelAndView deleteMyInfo(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main.do");
		HttpSession session = request.getSession();
		commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
		myInfoService.deleteMyInfo(commandMap.getMap());
		session.invalidate();

		return mv;
	}

}
