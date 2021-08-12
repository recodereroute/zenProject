package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.member.MemberDetailService;
import service.member.MemberEditService;

@Controller
@RequestMapping("edit")
public class MemberMyPageController {
	@Autowired
	MemberDetailService memberDetailService;
	@Autowired
	MemberEditService memberEditService;
	
	
	@RequestMapping("myPage")
	public String myPage() {
		return "member/memMyPage";
	}
	@RequestMapping("memDetail")
	public String memDetail(HttpSession session, Model model){
		memberDetailService.memDetail(model, session);
		return "member/memDetail";
	}
	@RequestMapping("memEdit")
	public String memEdit(HttpSession session, Model model,
			@ModelAttribute MemberCommand memberCommand) {
		memberDetailService.memDetail(model, session);
		return "member/memEdit";
	}
	@RequestMapping(value = "memEditOk", method = RequestMethod.POST)
	public String memEditOk(MemberCommand memberCommand, Errors errors,
			HttpSession session) {
		memberEditService.memEdit(memberCommand, session, errors);
		if(errors.hasErrors()) {
			return "member/memEdit";
		}
		return "redirect:memDetail";
	}

}
