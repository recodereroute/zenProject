package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.EmployeesDTO;
import repository.EmployeeRepository;

public class EmployeeInfoService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empInfo(String empNo, Model model) {
		EmployeesDTO dto = employeeRepository.empInfo(empNo);
		model.addAttribute("emp", dto);
	}
}
