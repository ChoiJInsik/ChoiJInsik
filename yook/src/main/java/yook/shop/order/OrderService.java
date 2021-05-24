package yook.shop.order;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import yook.common.map.CommandMap;

public interface  OrderService {
	
	Map<String, Object> orderMemberInfo(CommandMap commandMap, HttpServletRequest request) throws Exception;
	
	void insertOrder(CommandMap commandMap, HttpServletRequest request) throws Exception;

	Map<String, Object> selectOrder(CommandMap commandMap, HttpServletRequest request) throws Exception;

}
