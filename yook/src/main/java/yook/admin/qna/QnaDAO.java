package yook.admin.qna;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("qnaDAO")
public class QnaDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> qna(Map<String, Object> map)throws Exception{
		return (List<Map<String, Object>>) openBoardList("qna.qna", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> qnaDetail(Map<String, Object> map)throws Exception{
		return (Map<String, Object>) selectOne("qna.qnaDetail", map);
	}
	
	
	
	public void insertQna(Map<String, Object> map)throws Exception{
		insert("qna.insertQna", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> updateQnaForm(Map<String, Object> map)throws Exception{
		return (Map<String, Object>) selectOne("qna.updateQnaForm", map);
	}
	
	public void updateQna(Map<String, Object> map)throws Exception{
		update("qna.updateQna", map);
	}
	
	public void deleteQna(Map<String, Object> map)throws Exception{
		update("qna.deleteQna", map);
	}
	
	

}
