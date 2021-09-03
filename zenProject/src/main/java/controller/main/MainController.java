package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.AuthInfoDTO;
import command.EmployeeCommand;
import command.MemberCommand;
import service.board.MainBoardListService;
import service.employee.EmployeeNumService;
import service.main.ChekcIdService;
import service.main.EmployeeJoinService;
import service.main.FindPasswordService;
import service.main.IdFindFinishService;
import service.main.MemberJoinService;
import service.menu.MainMenuListService;
import service.notice.MainNoticeListService;
import validator.EmployeeCommandValidator;
import validator.MemberCommandValidator;

@Controller
public class MainController {
	@Autowired
	IdFindFinishService idFindFinishService;
	@Autowired
	FindPasswordService findPasswordService;
	@Autowired
	ChekcIdService checkIdService;
	@Autowired
	MemberJoinService memberJoinService;
	@Autowired
	EmployeeNumService employeeNumService;
	@Autowired
	EmployeeJoinService employeeJoinService;
	@Autowired
	MainBoardListService mainBoardListService;
	@Autowired
	MainNoticeListService mainNoticeListService;
	@Autowired
	MainMenuListService mainMenuListService;
	@RequestMapping("index")
	public String goIndex(Model model) {
		mainBoardListService.mainBoardList(model);
		mainNoticeListService.mainNoticeList(model);
		mainMenuListService.mainMenuList(model);
		return "index";
	}
	
	@RequestMapping("/search/findPasswordPro")
	public String  findPasswordPro(MemberCommand memberCommand,
			Model model) {
		String path = findPasswordService.findPassword(memberCommand, model);
		return path;
	}
	@RequestMapping("/search/findPassword")
	public String findPassword() {
		return "main/findPassword";
	}
	@RequestMapping("/search/idFindFinish")
	public String idFindFinish(MemberCommand memberCommand,
			Model model) {
		idFindFinishService.idFind(memberCommand, model);
		return "main/idFindFinish";
	}
	@RequestMapping("/search/idFind")
	public String idFind() {
		return "main/idSearch";
	}
	@RequestMapping("register")
	public String register() {
		return "main/registChoice";
	}
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
	@RequestMapping("/register/empRegist")
	public String empRegist(Model model, EmployeeCommand employeeCommand) {
		employeeNumService.empNo(model, employeeCommand);
	    return "main/empRegist";
	   }
	@RequestMapping(value = "/register/empJoin", method = RequestMethod.POST)
	public String empJoin(EmployeeCommand employeeCommand, Errors errors) {
		new EmployeeCommandValidator().validate(employeeCommand, errors);
		if(errors.hasErrors()) {
			return "main/empRegist";
		}
		AuthInfoDTO authInfo = checkIdService.check(employeeCommand.getEmpId());
		if(authInfo != null) {
			errors.rejectValue("empId", "duplicate");
			return "main/empRegist";
		}
		employeeJoinService.empJoin(employeeCommand);
		return "redirect:/";
	}
	
}