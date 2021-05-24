package yook.admin.review;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface AdminReviewService {

	public List<Map<String, Object>> adminReviewList(Map<String, Object> map) throws Exception;//어드민 리뷰리스트
	
	public List<Map<String, Object>> adminReviewList2(Map<String, Object> map) throws Exception;//어드민 리뷰리스트
		
	void insertReview(Map<String, Object> map, HttpServletRequest request) throws Exception; //리뷰작성
	
	Map<String, Object> updateReviewForm(Map<String, Object> map)throws Exception;//수정폼
	
	public void updateReview(Map<String, Object> map) throws Exception;//수정완료
	
	public void deleteReview(Map<String, Object> map) throws Exception;//삭제
	
	
}
