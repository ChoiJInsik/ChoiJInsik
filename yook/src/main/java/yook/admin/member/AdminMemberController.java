package yook.admin.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yook.admin.member.AdminMemberService;
import yook.common.map.CommandMap;

@Controller
public class AdminMemberController {
   
   @Resource(name="adminMemberService")
   private AdminMemberService adminMemberService;
   
   @RequestMapping(value="/admin.do")
   public ModelAndView openAdmin(CommandMap commandMap)throws Exception{
      ModelAndView mv = new ModelAndView("admin");
      return mv;
   }
   
   @RequestMapping(value="/adminMemberList.do")
   public ModelAndView openAdminMemberList(CommandMap commandMap)throws Exception{
      ModelAndView mv = new ModelAndView("adminMemberList");
      return mv;
   }
   
   @RequestMapping(value="/adminSelectMemberList.do")
   public ModelAndView selectMemberList(CommandMap commandMap)throws Exception{
      ModelAndView mv = new ModelAndView("jsonView");
      
      List<Map<String, Object>> list = adminMemberService.selectMemberList(commandMap.getMap());
      mv.addObject("list", list);
      if(list.size() >0) {
         mv.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
      }
      else {
         mv.addObject("TOTAL", 0);
      }
      return mv;
   }
   
   
   
   
   
   
   
   
   @RequestMapping(value="/openAdminMemberDetail.do")
   public ModelAndView openAdminMemberDetail(CommandMap commandMap)throws Exception{
      ModelAndView mv = new ModelAndView("adminMemberDetail");
      
      Map<String, Object> map = adminMemberService.openAdminMemberDetail(commandMap.getMap());
      mv.addObject("map", map);
      return mv;
   }
   
   @RequestMapping(value="/ignoreAdminMember.do")
   public ModelAndView ignoreAdminMember(CommandMap commandMap)throws Exception{
      ModelAndView mv = new ModelAndView("redirect:/adminMemberList.do");
      adminMemberService.ignoreAdminMember(commandMap.getMap());
      return mv;  
   }
   
   
   
}