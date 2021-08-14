package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import service.member.MemberDetailService;
import service.member.MemberEditService;
import service.member.MemberOutService;
import service.member.MemberPwConfirmService;
import service.member.MemberPwUpdateService;
import validator.MemberPasswordValidator;

@Controller
@RequestMapping("member")
public class MemberMyPageController {
	@Autowired
	MemberDetailService memberDetailService;
	@Autowired
	MemberEditService memberEditService;
	@Autowired
	MemberPwConfirmService memberPwConfirmService;
	@Autowired
	MemberPwUpdateService memberPwUpdateService;
	@Autowired
	MemberOutService memberOutService;
	
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
	@RequestMapping("memPwChange")
	public String memPwChange() {
		return "member/memPwChange";
	}
	@RequestMapping("memPwChangeOk")
	public String memPwChangeOk(@RequestParam(value = "memPw")String memPw, 
			HttpSession session, Model model,
			@ModelAttribute MemberCommand memberCommand) {
		String path = memberPwConfirmService.memPw(memPw, session, model);
		return path;
	}
	@RequestMapping("memPwUpdate")
	public String memPwUpdate(MemberCommand memberCommand, Errors errors, 
							HttpSession session) {
		new MemberPasswordValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			return "member/memPwChangeOk";
		}
		memberPwUpdateService.memPwUpdate(memberCommand,errors, session);
		if(errors.hasErrors()) {
			return "member/memPwChangeOk";
		}
		return "redirect:/";
	}
	@RequestMapping("memOut")
	public String memOut() {
		return"member/memFinalChk";
	}
	@RequestMapping(value = "memOutOk", method = RequestMethod.POST)
	public String memOutOk(@RequestParam(value="memPw")String memPw,
				HttpSession session, Model model) {
		String path = memberOutService.memOut(memPw, session, model);
		return path;
	}
}
