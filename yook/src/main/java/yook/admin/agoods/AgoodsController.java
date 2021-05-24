package yook.admin.agoods;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yook.admin.agoods.AgoodsService;
import yook.common.map.CommandMap;
import yook.shop.goods.GoodsService;

@Controller
public class AgoodsController {

	@Resource(name = "agoodsService")
	private AgoodsService agoodsService;

	@Resource(name = "goodsService")
	private GoodsService goodsService;

	@RequestMapping(value = "/adminGoodsList.do") // 관리자 상품리스트
	public ModelAndView openAdminGoodsList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("adminGoodsList");
		List<Map<String, Object>> list = agoodsService.openAgoodsList(commandMap.getMap());
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/deleteAdminGoods.do") // 상품 삭제
	public ModelAndView deleteAdminGoods(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/adminGoodsList.do");
		System.out.println(commandMap.getMap());
		agoodsService.deleteAdminGoods(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/goodsModifyForm.do")
	public ModelAndView goodsModifyForm(CommandMap commandMap, HttpServletRequest request) throws Exception { // 상품
																												// 수정폼(관리자)
		ModelAndView mv = new ModelAndView("adminGoodsWrite");

		Map<String, Object> map = goodsService.selectGoodsDetail(commandMap.getMap(), request);
		System.out.println("수정폼1=" + commandMap.getMap());
		System.out.println("수정폼2=" + map);
		mv.addObject("map", map);
		mv.addObject("list", map.get("list"));
		mv.addObject("type", "modify");
		mv.addObject("title", "상품 수정");
		System.out.println("수정폼3=" + map);
		return mv;
	}

	@RequestMapping(value = "/goodsModify.do")
	public ModelAndView goodsModify(CommandMap commandMap, HttpServletRequest request) throws Exception { // 상품
																											// 수정완료(관리자)
		ModelAndView mv = new ModelAndView("redirect:/adminGoodsList.do");
		System.out.println(commandMap.getMap());

		commandMap.put("GOODS_IMAGE", request.getSession().getAttribute("GOODS_IMAGE"));

		agoodsService.updateGoods(commandMap.getMap(), request);
		System.out.println("업데이트Map=" + commandMap);
		System.out.println("업데이트Map=" + commandMap.getMap());
		mv.addObject("IDX", commandMap.getMap().get("GOODS_NUM"));

		return mv;
	}

}
