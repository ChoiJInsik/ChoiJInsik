package yook.admin.qna;

import java.util.List;
import java.util.Map;

public interface QnaService {
	List<Map<String, Object>> qna(Map<String, Object> map)throws Exception; //공지 리스트
	Map<String, Object> qnaDetail(Map<String, Object> map)throws Exception;	 //디테일
	void insertQna(Map<String, Object> map)throws Exception; //글 작성
	Map<String, Object> updateQnaForm(Map<String, Object> map)throws Exception; //수정 폼
	void updateQna(Map<String, Object> map)throws Exception; //수정완료
	void deleteQna(Map<String, Object> map)throws Exception; //삭제
	
	
	
	
}
