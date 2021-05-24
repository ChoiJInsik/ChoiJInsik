package yook.admin.aevent;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yook.admin.aevent.AeventService;
import yook.common.map.CommandMap;

@Controller
public class AeventController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "AeventService")
	private AeventService aeventService;

	@RequestMapping(value = "/adminEventList.do")
	public ModelAndView event(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("adminEventList");
		List<Map<String, Object>> list = aeventService.event(commandMap.getMap());
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/admin/openAeventDetail.do") 
	public ModelAndView openAeventDetail(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("adminEventDetail");
		Map<String, Object> map = aeventService.aeventDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/adminEventWrite.do") 
	public ModelAndView openAeventWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("adminEventWrite");

		return mv;
	}

	@RequestMapping(value = "/admin/insertAevent.do") 
	public ModelAndView insertAevent(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/adminEventList.do");
		aeventService.insertAevent(commandMap.getMap());
		// mv.addObject("EVENT_NUM", commandMap.get("EVENT_NUM"));
		return mv;
	}

	@RequestMapping(value = "/admineventUpdate.do") 
	public ModelAndView updateAeventForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("adminEventUpdate");
		Map<String, Object> map = aeventService.updateAeventForm(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/admin/updateEvent.do") 
	public ModelAndView updateAfaq(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/adminEventList.do");
		aeventService.updateAevent(commandMap.getMap());
		return mv;
	}

	@RequestMapping(value = "/admin/aEventDelete.do") 
	public ModelAndView acsDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/adminEventList.do");
		aeventService.deleteAevent(commandMap.getMap());
		return mv;
	}
}
