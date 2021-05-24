package yook.board.board;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectReviewList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectPagingList("review.selectBoardList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectPagingList("qna.selectBoardList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> noticeList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) openBoardList("anotice.notice", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> eventList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) openBoardList("aevent.event", map);
	}

	/*
	 * @SuppressWarnings("unchecked") public List<Map<String, Object>>
	 * qnaList(Map<String, Object> map)throws Exception{ return (List<Map<String,
	 * Object>>)openBoardList("board.qnaList", map); }
	 */
	@SuppressWarnings("unchecked")
	public Map<String, Object> noticeDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("anotice.anoticeDetail", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> eventDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("aevent.aeventDetail", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> qnaDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("qna.aqnaDetail", map);
	}

	public void insertQna(Map<String, Object> map) throws Exception {
		insert("qna.insertQna", map);
	}

	public void deleteQna(Map<String, Object> map) throws Exception {
		update("qna.deleteQna", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> updateQnaForm(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("qna.updateQnaForm", map);
	}

	public void updateQna(Map<String, Object> map) throws Exception {
		update("qna.updateAevent", map);
	}

	/*
	 * @SuppressWarnings("unchecked") public Map<String, Object>
	 * reviewDetail(Map<String, Object> map)throws Exception{ return (Map<String,
	 * Object>)selectOne("board.qnaDetail", map); }
	 */

	public void insertReview(Map<String, Object> map) throws Exception {
		insert("review.insertReview", map);
	}

	public void deleteReview(Map<String, Object> map) throws Exception {
		update("review.deleteReview", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> updatReviewForm(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("review.updateForm", map);
	}

	public void updateReview(Map<String, Object> map) throws Exception {
		update("review.updateReview", map);
	}

}