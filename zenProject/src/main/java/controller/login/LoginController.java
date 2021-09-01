package controller.login;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.LoginCommand;
import service.main.CookieService;
import service.main.LoginService;
import validator.LoginCommandValidator;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	CookieService cookieService;
	
	@RequestMapping(value="login")
	public String main(@RequestParam(value="page" , defaultValue = "index")  String page,
			LoginCommand loginCommand,HttpServletRequest request,
			Model model) {
		cookieService.getCookie(request);
		model.addAttribute("page",page);
		return "main/login";
	}
	@Autowired
	LoginService loginService; 
	@RequestMapping(value="loginOk", method = RequestMethod.POST)
	public String login(LoginCommand loginCommand, Errors errors,
			HttpSession session, HttpServletResponse response,
			@RequestParam(value="page") String page) {
		new LoginCommandValidator().validate(loginCommand, errors);
		if(errors.hasErrors()) {
			return "main/login";
		}
		loginService.logIn(loginCommand, errors, session, response); 
		if(errors.hasErrors()) {
			return "main/login";
		}
		return "redirect:/"+page;		
	}
	@RequestMapping("logOut")
	public String logOut(
			HttpSession session, 
			HttpServletResponse response) {
		Cookie cookie = 
				new Cookie("autoLogin", "");
		cookie.setPath("/");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		session.invalidate();
		return "redirect:/";
	}
}
