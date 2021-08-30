package controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.employee.EmployeeInfoService;
import service.employee.EmployeeListService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeListService employeeListService;
	@Autowired
	EmployeeInfoService employeeInfoService;
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
}
