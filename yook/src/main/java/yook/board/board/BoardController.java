package yook.board.board;

import java.util.Map;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yook.board.board.BoardService;
import yook.common.map.CommandMap;
import yook.admin.aevent.AeventService;

@Controller
public class BoardController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardService")
	private BoardService boardService;

	/*
	 * @RequestMapping(value = "/reviewList.do") public ModelAndView
	 * ReviewList(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("review"); return mv; }
	 */

	/*
	 * @RequestMapping(value = "/reviewPagingList.do") public ModelAndView
	 * reviewListPaging(CommandMap commandMap) throws Exception { ModelAndView mv =
	 * new ModelAndView("jsonView");
	 * 
	 * List<Map<String, Object>> list =
	 * boardService.selectReviewList(commandMap.getMap()); mv.addObject("list",
	 * list); if (list.size() > 0) { mv.addObject("TOTAL",
	 * list.get(0).get("TOTAL_COUNT")); } else { mv.addObject("TOTAL", 0); } return
	 * mv; }
	 */

	@RequestMapping(value = "/qnaList.do")
	public ModelAndView qnaList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qnaList");
		return mv;
	}

	/*
	 * @RequestMapping(value = "/qnaPagingList.do") public ModelAndView
	 * qnaListPaging(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("jsonView");
	 * 
	 * List<Map<String, Object>> list =
	 * boardService.selectQnaList(commandMap.getMap()); mv.addObject("list", list);
	 * if (list.size() > 0) { mv.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
	 * } else { mv.addObject("TOTAL", 0); } return mv; }
	 */

	@RequestMapping(value = "/noticeList.do")
	public ModelAndView noticeList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice");
		List<Map<String, Object>> list = boardService.noticeList(commandMap.getMap());
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/eventList.do")
	public ModelAndView eventList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("event");
		List<Map<String, Object>> list = boardService.eventList(commandMap.getMap());
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/faq.do")
	public ModelAndView faqList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq");
		return mv;
	}

	@RequestMapping(value = "/qnaDetail.do") // 글 디테일 보기
	public ModelAndView qnaDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qnaDetail");
		Map<String, Object> map = boardService.qnaDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/noticeDetail.do") // 글 디테일 보기
	public ModelAndView noticeDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("noticeDetail");
		Map<String, Object> map = boardService.noticeDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/eventDetail.do") // 글 디테일 보기
	public ModelAndView eventDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("eventDetail");
		Map<String, Object> map = boardService.eventDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	/*
	 * @RequestMapping(value = "/insertReview.do") // 글작성 public ModelAndView
	 * insertReview(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { ModelAndView mv = new ModelAndView("reviewWrite");
	 * commandMap.put("RE_IMAGE", request.getSession().getAttribute("RE_IMAGE"));
	 * boardService.insertReview(commandMap.getMap(), request);
	 * mv.addObject("RE_NUM", commandMap.get("RE_NUM")); return mv; }
	 * 
	 * @RequestMapping(value = "/reviewDelete.do") public ModelAndView
	 * reviewDelete(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("redirect:/reviewList.do");
	 * boardService.deleteReview(commandMap.getMap()); return mv; }
	 * 
	 * @RequestMapping(value = "/updateReviewForm.do") // 보드 수정폼 public ModelAndView
	 * updateReviewForm(CommandMap commandMap) throws Exception { ModelAndView mv =
	 * new ModelAndView("reviewUpdateForm"); Map<String, Object> map =
	 * boardService.updatReviewForm(commandMap.getMap()); mv.addObject("map", map);
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/updateReview.do") // 수정 완성 public ModelAndView
	 * updateReview(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("redirect:/reviewList.do");
	 * boardService.updateReview(commandMap.getMap()); return mv; }
	 */

	@RequestMapping(value = "/insertQna.do") // 글작성
	public ModelAndView insertQna(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("qnaWrite");
		commandMap.put("QNA_IMAGE", request.getSession().getAttribute("QNA_IMAGE"));
		boardService.insertQna(commandMap.getMap(), request);
		mv.addObject("QNA_NUM", commandMap.get("QNA_NUM"));
		return mv;
	}

	@RequestMapping(value = "/qnaDelete.do")
	public ModelAndView qnaDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qnaList.do");
		boardService.deleteQna(commandMap.getMap());
		return mv;
	}

	@RequestMapping(value = "/updateQnaForm.do") // 보드 수정폼
	public ModelAndView updateQnaForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qnaUpdateForm");
		Map<String, Object> map = boardService.updateQnaForm(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/updateQna.do") // 수정 완성
	public ModelAndView updateQna(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qnaList.do");
		boardService.updateQna(commandMap.getMap());
		return mv;
	}

}