package controller.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Model.AuthInfoDTO;
import service.employee.EmployeeInfoService;

@Controller
@RequestMapping("employee")
public class EmployeeMyPageController {
	@Autowired
	EmployeeInfoService employeeInfoService;
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
}
