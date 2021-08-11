package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.AuthInfoDTO;
import command.MemberCommand;
import service.main.ChekcIdService;
import service.main.MemberJoinService;
import validator.MemberCommandValidator;

@Controller
public class MainController {
	@Autowired
	ChekcIdService checkIdService;
	@Autowired
	MemberJoinService memberJoinService;
	
	@RequestMapping("/register/regist")
	public String regist(@ModelAttribute(value = "memberCommand")
						MemberCommand memberCommand, Model model) {
		return "main/regist";
	}
	@RequestMapping(value = "/register/memRegist", method =RequestMethod.POST)
	public String memRegist(MemberCommand memberCommand, Errors errors) {
		new MemberCommandValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			return "main/regist";
		}
		AuthInfoDTO authInfo = checkIdService.check(memberCommand.getMemId());
		if(authInfo != null) {
			errors.rejectValue("memId", "duplicate");
			return "main/regist";
		}
		memberJoinService.memJoin(memberCommand);
		return "redirect:/";
	}

}