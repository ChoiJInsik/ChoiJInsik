package yook.admin.review;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import yook.common.util.FileUtils;

@Service("reviewService")
public class AdminReviewServiceImpl implements AdminReviewService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "reviewDAO")
	private AdminReviewDAO reviewDAO;

	@Override
	public List<Map<String, Object>> adminReviewList(Map<String, Object> map) throws Exception {
		return reviewDAO.adminReviewList(map);
	}

	@Override
	public List<Map<String, Object>> adminReviewList2(Map<String, Object> map) throws Exception {
		return reviewDAO.adminReviewList2(map);
	}

	@Override
	public void insertReview(Map<String, Object> map, HttpServletRequest request) throws Exception { // 리뷰등록
		reviewDAO.insertReview(map);
	}

	@Override
	public Map<String, Object> updateReviewForm(Map<String, Object> map) throws Exception {
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
