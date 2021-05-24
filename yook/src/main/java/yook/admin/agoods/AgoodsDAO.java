package yook.admin.agoods;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("agoodsDAO")
public class AgoodsDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> openAgoodsList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) openBoardList("aGoods.aGoodsList", map);
	}

	public void deleteAdminGoods(Map<String, Object> map) throws Exception {
		delete("aGoods.deleteAdminGoods", map);
	}

	public void deleteAdminGoodsATT(Map<String, Object> map) throws Exception {
		delete("aGoods.deleteAdminGoodsATT", map);
	}

	public void updateGoods(Map<String, Object> map) throws Exception { 
		update("aGoods.updateGoods", map);
	}

	public void attributeDelete(Map<String, Object> map) throws Exception { 
		insert("aGoods.attributeDelete", map);
	}

}
