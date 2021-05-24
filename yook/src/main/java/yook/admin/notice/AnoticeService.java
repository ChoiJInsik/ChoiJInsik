package yook.admin.notice;

import java.util.List;
import java.util.Map;

public interface AnoticeService {
	List<Map<String, Object>> notice(Map<String, Object> map)throws Exception; //공지 리스트
	Map<String, Object> anoticeDetail(Map<String, Object> map)throws Exception;	 //디테일
	void insertAnotice(Map<String, Object> map)throws Exception; //글 작성
	Map<String, Object> updateAnoticeForm(Map<String, Object> map)throws Exception; //수정 폼
	void updateAnotice(Map<String, Object> map)throws Exception; //수정완료
	void deleteAnotice(Map<String, Object> map)throws Exception; //삭제
	
	
	
	
}
