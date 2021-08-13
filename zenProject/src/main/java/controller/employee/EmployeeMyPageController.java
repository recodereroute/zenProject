package controller.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Model.AuthInfoDTO;
import service.employee.EmployeeInfoService;
import service.employee.EmployeeOutService;

@Controller
@RequestMapping("employee")
public class EmployeeMyPageController {
	@Autowired
	EmployeeInfoService employeeInfoService;
	@Autowired
	EmployeeOutService employeeOutService;
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
	@RequestMapping("empOut")
	public String empOut() {
		return "employee/empFinalChk";
	}
	@RequestMapping(value = "empOutOk", method = RequestMethod.POST)
	public String memOutOk(@RequestParam(value = "empPw")String empPw,
			HttpSession session, Model model) {
		return employeeOutService.empOut(empPw, session, model);
	}
}
