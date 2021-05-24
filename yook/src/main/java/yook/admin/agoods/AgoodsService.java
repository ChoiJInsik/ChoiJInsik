package yook.admin.agoods;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AgoodsService {

	void deleteAdminGoods(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> openAgoodsList(Map<String, Object> map) throws Exception;

	void updateGoods(Map<String, Object> map, HttpServletRequest request) throws Exception;

}
