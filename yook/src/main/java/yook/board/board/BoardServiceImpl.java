package yook.board.board;

import java.util.Map;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import yook.admin.aevent.AeventDAO;
import yook.admin.notice.AnoticeDAO;
import yook.admin.qna.QnaDAO;
import yook.admin.review.AdminReviewDAO;
import yook.common.util.FileUtils;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "anoticeDAO")
	private AnoticeDAO anoticeDAO;

	@Resource(name = "AeventDAO")
	private AeventDAO AeventDAO;

	@Resource(name = "qnaDAO")
	private QnaDAO qnaDAO;

	@Resource(name = "reviewDAO")
	private AdminReviewDAO reviewDAO;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public List<Map<String, Object>> selectReviewList(Map<String, Object> map) throws Exception {
		return reviewDAO.adminReviewList(map);
	}

	@Override
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map) throws Exception {
		return qnaDAO.qna(map);
	}

	@Override
	public Map<String, Object> qnaDetail(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaDetail(map);
	}

	@Override
	public List<Map<String, Object>> noticeList(Map<String, Object> map) throws Exception {
		return anoticeDAO.notice(map);
	}

	@Override
	public Map<String, Object> noticeDetail(Map<String, Object> map) throws Exception {
		return anoticeDAO.anoticeDetail(map);
	}

	@Override
	public List<Map<String, Object>> eventList(Map<String, Object> map) throws Exception {
		return AeventDAO.event(map);
	}

	@Override
	public Map<String, Object> eventDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return AeventDAO.aeventDetail(map);
	}

	@Override
	public void insertQna(Map<String, Object> map, HttpServletRequest request) throws Exception {
		qnaDAO.insertQna(map);
	}

	@Override
	public Map<String, Object> updateQnaForm(Map<String, Object> map) throws Exception {
		return qnaDAO.updateQnaForm(map);
	}

	@Override
	public void updateQna(Map<String, Object> map) throws Exception {
		qnaDAO.updateQna(map);
	}

	@Override
	public void deleteQna(Map<String, Object> map) throws Exception {
		qnaDAO.deleteQna(map);
	}

	@Override
	public void insertReview(Map<String, Object> map, HttpServletRequest request) throws Exception {
		reviewDAO.insertReview(map);
	}

	@Override
	public Map<String, Object> updatReviewForm(Map<String, Object> map) throws Exception {
		return reviewDAO.updateReviewForm(map);
	}

	@Override
	public void updateReview(Map<String, Object> map) throws Exception {
		reviewDAO.updateReview(map);
	}

	@Override
	public void deleteReview(Map<String, Object> map) throws Exception {
		reviewDAO.deleteReview(map);
	}

}