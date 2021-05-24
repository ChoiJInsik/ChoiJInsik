package yook.member.login;

import java.util.Map;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import yook.member.login.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	@Override
	public Map<String, Object> login(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}

	@Override
	public Map<String, Object> findIdWithEmail(Map<String, Object> map) throws Exception {
		return loginDAO.findIdWithEmail(map);
	}

	@Override
	public int findId(Map<String, Object> map) throws Exception {
		return loginDAO.findId(map);
	}

	@Override
	public int findPwWithEmail(Map<String, Object> map) throws Exception {
		return loginDAO.findPwWithEmail(map);
	}

	@Override
	public void updateTempPw(Map<String, Object> map) throws Exception {
		loginDAO.updateTempPw(map);
	}
}
