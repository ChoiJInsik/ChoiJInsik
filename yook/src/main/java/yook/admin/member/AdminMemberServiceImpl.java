package yook.admin.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import yook.admin.member.AdminMemberDao;
import yook.member.*;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {
   Logger log = Logger.getLogger(this.getClass()); 
   
   @Resource(name="adminMemDao")
   private AdminMemberDao adminMemDao;
   
   @Override
   public List<Map<String, Object>> selectMemberList(Map<String, Object> map)throws Exception{
      return adminMemDao.selectMemberList(map);
   }
   
   @Override
   public Map<String, Object> openAdminMemberDetail(Map<String, Object> map)throws Exception{
      return adminMemDao.openAdminMemberDetail(map);
   }
   
   public void ignoreAdminMember(Map<String, Object> map)throws Exception{
	      adminMemDao.ignoreAdminMember(map);
	   }
 
}

  