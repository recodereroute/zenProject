package controller.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Model.AuthInfoDTO;
import command.EmployeeCommand;
import service.employee.EmployeeDeleteService;
import service.employee.EmployeeInfoService;
import service.employee.EmployeeListService;
import service.employee.EmployeeModifyService;
import service.employee.EmployeeOutService;
import service.employee.EmployeePwConfirmService;
import service.employee.EmployeePwUpdateService;
import validator.EmployeePassWordValidator;

@Controller
@RequestMapping("employee")
public class EmployeeMyPageController {
	@Autowired
	EmployeeInfoService employeeInfoService;
	@Autowired
	EmployeeOutService employeeOutService;
	@Autowired
	EmployeeModifyService employeeModifyService;
	@Autowired
	EmployeeDeleteService employeeDeleteService;
	@Autowired
	EmployeePwConfirmService employeePwConfirmService;
	@Autowired
	EmployeePwUpdateService employeePwUpdateService;
	@Autowired
	EmployeeListService employeeListService;
	
	@RequestMapping("empMyPage")
	public String empMyPage() {
		return "employee/empMyPage";
	}
	@RequestMapping("empDetail")
	public String empDetail(HttpSession session, Model model){
		AuthInfoDTO authInfo =(AuthInfoDTO)session.getAttribute("authInfo");
		String empNo = authInfo.getGrade();
		employeeInfoService.empInfo(empNo, model);
		return "employee/empInfo";
	}
	@RequestMapping("empModify")
	public String empModify(@RequestParam(value = "empNo")String empNo, Model model) {
		employeeInfoService.empInfo(empNo, model);
		return "employee/employeeModify";
	}
	@RequestMapping(value = "empModifyOk", method = RequestMethod.POST)
	public String empModifyOk(EmployeeCommand employeeCommand, HttpSession session, Errors errors) {
//		jsp 페이지부터 수정하면 여기서도 validator 사용가능. 시간 남으면 구현
//		new EmployeeModifyValidator().validate(employeeCommand, errors);
//		if(errors.hasErrors()) {
//			return "employee/employeeModify";
//		}
		employeeModifyService.empModify(employeeCommand, session);
		return "redirect:empDetail";
	}
	// 직원 강퇴기능 - 본인 포함 암호 없이 강퇴 가능해서 master만 사용할 수 있게 내용 구현 해줘야 할듯.
	@RequestMapping("empDelete")
	public String empDelete(@RequestParam(value = "empNo")String empNo, HttpSession session){
		String path = employeeDeleteService.empDelete(empNo, session);
		return path;
	}
	@RequestMapping("empOut")
	public String empOut() {
		return "employee/empFinalChk";
	}
	@RequestMapping(value = "empOutOk", method = RequestMethod.POST)
	public String memOutOk(@RequestParam(value = "empPw")String empPw,
			HttpSession session, Model model) {
		return employeeOutService.empOut(empPw, session, model);
	}
	
	//비밀번호 변경
	@RequestMapping("empPwEdit")
	public String empPwEdit() {
		return "employee/empPwChk";
	}
	@RequestMapping("empPwConfirm")
	public String empPwConfirm(@RequestParam(value = "empPw")String empPw,
			HttpSession session, Model model,
			@ModelAttribute EmployeeCommand employeeCommand) {
		return employeePwConfirmService.checkPw(empPw,session, model);
	}
	@RequestMapping("empPwUpdate")
	public String empPwUpdate(EmployeeCommand employeeCommand,
			Errors errors, HttpSession session) {
		new EmployeePassWordValidator().validate(employeeCommand,errors);
		if(errors.hasErrors()) {
			return "employee/empPwEditOk";
		}
		employeePwUpdateService.empPwUpdate(employeeCommand, errors, session);
		if(errors.hasErrors()) {
			return "employee/empPwEditOk";
		}
		return "redirect:/";
	}
	
	//직원 리스트
	@RequestMapping("empList")
	public String empList(Model model, @RequestParam(value = "page", defaultValue = "1")int page) {
		employeeListService.empList(model,page);
		return "employee/empList";
	}
}
