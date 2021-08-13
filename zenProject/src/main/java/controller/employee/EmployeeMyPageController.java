package controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("employee")
public class EmployeeMyPageController {
	@RequestMapping("empMyPage")
	public String empMyPage() {
		return "employee/empMyPage";
	}

}
