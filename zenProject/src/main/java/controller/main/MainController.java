package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;

@Controller
public class MainController {
	@RequestMapping(value = "/register/regist", method = RequestMethod.POST)
	public String regist(@ModelAttribute(value = "memberCommand")
						MemberCommand memberCommand, Model model) {
		return "main/regist";
	}

}