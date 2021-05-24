package yook.admin.notice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("anoticeDAO")
public class AnoticeDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> notice(Map<String, Object> map)throws Exception{
		return (List<Map<String, Object>>) openBoardList("anotice.notice", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> anoticeDetail(Map<String, Object> map)throws Exception{
		return (Map<String, Object>) selectOne("anotice.anoticeDetail", map);
	}
	
	
	
	public void insertAnotice(Map<String, Object> map)throws Exception{
		insert("anotice.insertAnotice", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> updateAnoticeForm(Map<String, Object> map)throws Exception{
		return (Map<String, Object>) selectOne("anotice.updateForm", map);
	}
	
	public void updateAnotice(Map<String, Object> map)throws Exception{
		update("anotice.updateAnotice", map);
	}
	
	public void deleteAnotice(Map<String, Object> map)throws Exception{
		update("anotice.deleteAnotice", map);
	}
	
	

}
