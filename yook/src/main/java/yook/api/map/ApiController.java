package yook.api.map;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yook.common.map.CommandMap;
import yook.shop.basket.BasketService;
import yook.shop.order.OrderService;

@Controller

public class ApiController {
	
	@Resource(name="basketService")
	private BasketService basketService;
	
	@Resource(name="orderService")
	private OrderService orderService;
	
	

	@RequestMapping(value = "/openKakaoMap.do")
	public ModelAndView openApi(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/api/kakoMap");

		return mv;
	}

	@RequestMapping(value = "/payment.do")
	public ModelAndView openPayment(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/api/payment");

		Object MEM_NUM = "";
		HttpSession session = request.getSession(); 
		commandMap.put("MEM_NUM", ((Map)session.getAttribute("session_MEMBER")).get("MEM_NUM"));
		
		
		List<Map<String,Object>> list = basketService.basketList(commandMap);
		Map<String,Object> map = orderService.orderMemberInfo(commandMap, request);
		mv.addObject("list", list);
		mv.addObject("map", map);
		
		System.out.println(list);
		System.out.println(map);
		return mv;
	}

	
}
