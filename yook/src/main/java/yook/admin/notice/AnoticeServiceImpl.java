package yook.admin.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import yook.admin.notice.AnoticeDAO;


@Service("anoticeService")
public class AnoticeServiceImpl implements AnoticeService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="anoticeDAO")
	private AnoticeDAO anoticeDAO;
	
	@Override
	   public List<Map<String, Object>> notice(Map<String, Object> map)throws Exception{
	      return anoticeDAO.notice(map);  
	   }
	
	@Override
	public Map<String, Object> anoticeDetail(Map<String, Object> map)throws Exception{
		
		Map<String, Object> resultMap = anoticeDAO.anoticeDetail(map);
		return resultMap; 
	}
	
	@Override
	public void insertAnotice(Map<String, Object> map)throws Exception{
		anoticeDAO.insertAnotice(map);
	}
	
	@Override
	public Map<String, Object> updateAnoticeForm(Map<String, Object> map)throws Exception{
		return anoticeDAO.updateAnoticeForm(map);
	}
	
	@Override
	public void updateAnotice(Map<String, Object> map)throws Exception{
		anoticeDAO.updateAnotice(map);
	}
	
	@Override
	public void deleteAnotice(Map<String, Object> map)throws Exception{
		anoticeDAO.deleteAnotice(map);
	}
	
}
