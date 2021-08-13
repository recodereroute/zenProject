package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfoDTO;
import Model.EmployeesDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeePwUpdateService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void empPwUpdate(EmployeeCommand employeeCommand, Errors errors,
			HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		EmployeesDTO emp = employeeRepository.empInfo(authInfo.getGrade());
		if(bCryptPasswordEncoder.matches(employeeCommand.getOldPw(), emp.getEmpPw())) {
			EmployeesDTO dto = new EmployeesDTO();
			dto.setEmpId(authInfo.getUserId());
			dto.setEmpPw(bCryptPasswordEncoder.encode(employeeCommand.getEmpPw()));
			employeeRepository.empPwUpdate(dto);
		}else {
			errors.rejectValue("oldPw", "notPw");
		}
	}
}
