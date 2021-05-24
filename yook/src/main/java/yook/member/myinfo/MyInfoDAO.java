package yook.member.myinfo;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("myInfoDAO")
public class MyInfoDAO extends AbstractDAO {

	public Map<String, Object> selectMyInfo(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("myInfo.selectMyInfo", map);
	}

	public Map<String, Object> selectMyOrderInfo(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("myInfo.selectMyOrderInfo", map);
	}

	public Map<String, Object> selectMyPointInfo(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("myInfo.selectMyPointInfo", map);
	}

	public Map<String, Object> updateMyInfoForm(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("myInfo.selectMyInfoModifyForm", map);
	}

	public void updateMyInfo(Map<String, Object> map) throws Exception {
		update("myInfo.updateMyInfo", map);
	}

	public void deleteMyInfo(Map<String, Object> map) throws Exception {
		update("myInfo.deleteMyInfo", map);
	}

	public Map<String, Object> selectMyPoint(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectList("myInfo.selectMyPoint", map);
	}

}
