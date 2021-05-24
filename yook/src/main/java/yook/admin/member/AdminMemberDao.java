package yook.admin.member;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import yook.common.dao.AbstractDAO;

@Repository("adminMemDao")
public class AdminMemberDao extends AbstractDAO {
   
      @SuppressWarnings("unchecked")
      public List<Map<String, Object>> selectMemberList(Map<String, Object> map)throws Exception{
         return (List<Map<String, Object>>)selectPagingList("adminMem.selectMemberList", map); 
      }
      
      @SuppressWarnings("unchecked")
      public Map<String, Object> openAdminMemberDetail(Map<String, Object> map)throws Exception{
         return (Map<String, Object>)selectOne("adminMem.openAdminMemberDetail", map);
      }
      
      public void ignoreAdminMember(Map<String, Object> map)throws Exception{
          update("adminMem.ignoreAdminMember", map);
          
       }
      
     
}