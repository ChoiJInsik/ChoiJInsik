package yook.member.myinfo;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MyInfoService {
	 Map<String, Object> selectMyInfoForm(Map<String, Object> map) throws Exception; 
	 Map<String, Object> updateMyInfoForm(Map<String, Object> map) throws Exception; 
	 void updateMyInfo(Map<String, Object> map)throws Exception;
	 void deleteMyInfo(Map<String, Object> map)throws Exception;
	 Map<String, Object> selectMyPointForm(Map<String, Object> map) throws Exception;
	 	
}
