package yook.admin.qna;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import yook.admin.qna.QnaDAO;


@Service("qnaService")
public class QnaServiceImpl implements QnaService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="qnaDAO")
	private QnaDAO qnaDAO;
	
	@Override
	   public List<Map<String, Object>> qna(Map<String, Object> map)throws Exception{
	      return qnaDAO.qna(map);  
	   }
	
	@Override
	public Map<String, Object> qnaDetail(Map<String, Object> map)throws Exception{
		
		Map<String, Object> resultMap = qnaDAO.qnaDetail(map);
		return resultMap; 
	}
	
	@Override
	public void insertQna(Map<String, Object> map)throws Exception{
		qnaDAO.insertQna(map);
	}
	
	@Override
	public Map<String, Object> updateQnaForm(Map<String, Object> map)throws Exception{
		return qnaDAO.updateQnaForm(map);
	}
	
	@Override
	public void updateQna(Map<String, Object> map)throws Exception{
		qnaDAO.updateQna(map);
	}
	
	@Override
	public void deleteQna(Map<String, Object> map)throws Exception{
		qnaDAO.deleteQna(map);
	}
	
}
