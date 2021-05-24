package yook.admin.aevent;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("AeventDAO")
public class AeventDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> event(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) openBoardList("aevent.event", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> aeventDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("aevent.aeventDetail", map);
	}

	public void insertAevent(Map<String, Object> map) throws Exception {
		insert("aevent.insertAevent", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> updateAeventForm(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("aevent.updateForm", map);
	}

	public void updateAevent(Map<String, Object> map) throws Exception {
		update("aevent.updateAevent", map);
	}

	public void deleteAevent(Map<String, Object> map) throws Exception {
		update("aevent.deleteAevent", map);
	}

}
