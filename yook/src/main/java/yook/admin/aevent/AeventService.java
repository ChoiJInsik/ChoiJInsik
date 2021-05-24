package yook.admin.aevent;

import java.util.List;
import java.util.Map;

public interface AeventService {
	List<Map<String, Object>> event(Map<String, Object> map)throws Exception; //공지 리스트
	Map<String, Object> aeventDetail(Map<String, Object> map)throws Exception;	 //디테일
	void insertAevent(Map<String, Object> map)throws Exception; //글 작성
	Map<String, Object> updateAeventForm(Map<String, Object> map)throws Exception; //수정 폼
	void updateAevent(Map<String, Object> map)throws Exception; //수정완료
	void deleteAevent(Map<String, Object> map)throws Exception; //삭제
	
	
	
	
}
