package controller.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import service.employee.EmpListEditService;
import service.employee.EmployeeDeleteService;
import service.employee.EmployeeInfoService;
import service.employee.EmployeeListService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeListService employeeListService;
	@Autowired
	EmployeeInfoService employeeInfoService;
	@Autowired
	EmpListEditService empListEditService;
	@Autowired
	EmployeeDeleteService employeeDeleteService;
	//직원 리스트
	@RequestMapping("empList")
	public String empList(Model model, @RequestParam(value = "page", defaultValue = "1")Integer page) {
		employeeListService.empList(model,page);
		return "employee/empList";
	}
	@RequestMapping(value = "empListInfo", method = RequestMethod.POST)
	public String empListInfo(@RequestParam(value = "empNo")String empNo, Model model) {
		employeeInfoService.empInfo(empNo, model);
		return "employee/empListInfo";
	}
	@RequestMapping("empListEdit")
	public String empListEdit(@RequestParam(value = "empNo")String empNo, Model model) {
		employeeInfoService.empInfo(empNo, model);
		return "employee/empListEdit";
	}
	@RequestMapping(value = "empListEditOk", method = RequestMethod.POST)
	public String empListEditOk(EmployeeCommand employeeCommand) {
		empListEditService.empListEdit(employeeCommand);
		return "redirect:empList";
	}
	// 직원 강퇴기능 - 본인 포함 암호 없이 강퇴 가능해서 master만 사용할 수 있게 내용 구현 해줘야 할듯.
	@RequestMapping("empDelete")
	public String empDelete(@RequestParam(value = "empNo")String empNo, HttpSession session){
		String path = employeeDeleteService.empDelete(empNo, session);
		return path;
	}
}
