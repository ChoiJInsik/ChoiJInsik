package yook.admin.review;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import yook.common.map.CommandMap;

@Controller
public class AdminReviewController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "reviewService")
	private AdminReviewService reviewService;

	@RequestMapping(value = "/adminReviewList.do") // 리뷰 리스트
	public ModelAndView adminReviewList2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("adminReviewList");
		commandMap.put("IDX", request.getParameter("IDX"));
		List<Map<String, Object>> list = reviewService.adminReviewList2(commandMap.getMap());
		System.out.println(list);

		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/reviewDetail.do") // 리뷰 리스트
	public ModelAndView adminReviewList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reviewDetail");
		/*
		 * HttpSession session = request.getSession(); commandMap.put("MEM_NUM",
		 * ((Map)session.getAttribute("session_MEMBER")).get("MEM_NUM"));
		 */
		List<Map<String, Object>> list = reviewService.adminReviewList(commandMap.getMap());
		System.out.println(list);

		mv.addObject("list", list);
		return mv;
	}

	/*
	 * @RequestMapping(value="/reviewDetail.do") public ModelAndView
	 * selectReviewList(CommandMap commandMap) throws Exception{ ModelAndView mv =
	 * new ModelAndView("jsonView");
	 * 
	 * List<Map<String,Object>> list =
	 * reviewService.adminReviewList(commandMap.getMap()); mv.addObject("list",
	 * list); if(list.size() > 0){ mv.addObject("TOTAL",
	 * list.get(0).get("TOTAL_COUNT")); } else{ mv.addObject("TOTAL", 0); }
	 * 
	 * return mv; }
	 */

	@RequestMapping(value = "/reviewWrite.do")
	public ModelAndView reviewWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reviewWriteForm");
		/*
		 * HttpSession session = request.getSession(); commandMap.put("MEM_NUM",
		 * ((Map)session.getAttribute("session_MEMBER")).get("MEM_NUM"));
		 */
		commandMap.put("GOODS_NUM", request.getParameter("IDX"));
		System.out.println(commandMap.getMap());
		Map<String, Object> map = (commandMap.getMap());
		mv.addObject("GOODS_NUM", commandMap.get("GOODS_NUM"));
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/insertReview.do", method = RequestMethod.POST)
	public ModelAndView insertReview(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main.do");

		HttpSession session = request.getSession();
		commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
		commandMap.put("MEM_NUM", ((Map) session.getAttribute("session_MEMBER")).get("MEM_NUM"));
		commandMap.put("GOODS_NUM", request.getParameter("GOODS_NUM"));
		reviewService.insertReview(commandMap.getMap(), request);
		return mv;
	}

	@RequestMapping(value = "/ReviewUpdate.do") // 수정폼
	public ModelAndView updateReviewForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reviewUpdateForm");
		Map<String, Object> map = reviewService.updateReviewForm(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/updateReview.do") // 수정 완료
	public ModelAndView updateReviw(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/reviewList.do");
		reviewService.updateReview(commandMap.getMap());
		return mv;
	}
	/*
	 * @RequestMapping(value="/updateReview.do") public ModelAndView
	 * updateReview(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception{ ModelAndView mv = new ModelAndView("redirect:/reviewList.do");
	 * reviewService.updateReview(commandMap.getMap(), request); mv.addObject("IDX",
	 * commandMap.getMap().get("IDX")); return mv; }
	 * 
	 * 
	 * @RequestMapping(value = "/reviewModifyForm.do") public ModelAndView
	 * reviewModifyForm(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { //리뷰 수정폼(손님) ModelAndView mv = new
	 * ModelAndView("reviewWriteForm");
	 * 
	 * Map<String, Object> map =
	 * reviewService.selectGoodsDetail(commandMap.getMap(), request);
	 * mv.addObject("map", map); mv.addObject("list", map.get("list"));
	 * mv.addObject("type", "modify"); mv.addObject("title", "상품 수정");
	 * System.out.println("수정폼3=" + map); return mv; }
	 */

	@RequestMapping(value = "/deleteReview.do") // 리뷰 삭제
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/reviewList.do");
		reviewService.deleteReview(commandMap.getMap());
		return mv;
	}

}
