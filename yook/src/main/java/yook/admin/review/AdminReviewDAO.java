package yook.admin.review;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("reviewDAO")
public class AdminReviewDAO extends AbstractDAO{
	
	 
	  @SuppressWarnings("unchecked")
	public List<Map<String, Object>> adminReviewList(Map<String, Object> map) throws Exception {
		  return(List<Map<String, Object>>) selectPagingList("review.adminReviewList", map); 
	 }
	  
	  @SuppressWarnings("unchecked")
		public List<Map<String, Object>> adminReviewList2(Map<String, Object> map) throws Exception {
			  return(List<Map<String, Object>>) selectPagingList("review.adminReviewList2", map); 
		 }
	 
	
	public void insertReview(Map<String, Object> map) throws Exception { 
		insert("review.insertReview", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> updateReviewForm(Map<String, Object> map)throws Exception{
		return (Map<String, Object>) selectOne("review.updateForm", map);
	}
	
	public void updateReview(Map<String, Object> map) throws Exception{
		update("review.updateReview", map);
	}

	public void deleteReview(Map<String, Object> map) throws Exception{
		update("review.deleteReview", map);
	}

}