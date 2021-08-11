package service.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfoDTO;
import command.LoginCommand;
import repository.LoginRepository;

public class LoginService {

	
	@Autowired
	LoginRepository loginRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	public void logIn(LoginCommand loginCommand, Errors errors,
			HttpSession session, HttpServletResponse response) {
		String userId = loginCommand.getUserId();
		AuthInfoDTO authInfo = loginRepository.logIn(userId);
		if(authInfo == null) {
			errors.rejectValue("userId", "notId");
		}else {
			if(bcryptPasswordEncoder.matches(
					loginCommand.getUserPw(), authInfo.getUserPw())) {
				session.setAttribute("authInfo", authInfo);
				if(loginCommand.getAutoLogin() != null) {
					Cookie cookie = 
							new Cookie("autoLogin", authInfo.getUserId());
					cookie.setPath("/");
					cookie.setMaxAge(60*60*24*30);
					response.addCookie(cookie);
				}
				if(loginCommand.getIdStore() != null) {
					Cookie cookie = 
							new Cookie("idStore", authInfo.getUserId());
					cookie.setPath("/");
					cookie.setMaxAge(60*60*24*30);
					response.addCookie(cookie);
				}else {
					Cookie cookie = 
							new Cookie("idStore", "");
					cookie.setPath("/");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}else {
				errors.rejectValue("userPw", "notPw");
			}
		}
	}	
}