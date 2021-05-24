package yook.admin.aevent;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import yook.admin.aevent.AeventDAO;


@Service("AeventService")
public class AeventServiceImpl implements AeventService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="AeventDAO")
	private AeventDAO aeventDAO;
	
	@Override
	   public List<Map<String, Object>> event(Map<String, Object> map)throws Exception{
	      return aeventDAO.event(map);  
	   }
	
	@Override
	public Map<String, Object> aeventDetail(Map<String, Object> map)throws Exception{
		
		Map<String, Object> resultMap = aeventDAO.aeventDetail(map);
		return resultMap; 
	}
	
	@Override
	public void insertAevent(Map<String, Object> map)throws Exception{
		aeventDAO.insertAevent(map);
	}
	
	@Override
	public Map<String, Object> updateAeventForm(Map<String, Object> map)throws Exception{
		return aeventDAO.updateAeventForm(map);
	}
	
	@Override
	public void updateAevent(Map<String, Object> map)throws Exception{
		aeventDAO.updateAevent(map);
	}
	
	@Override
	public void deleteAevent(Map<String, Object> map)throws Exception{
		aeventDAO.deleteAevent(map);
	}
	
}
