package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.EmployeesDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeModifyService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empModify(EmployeeCommand employeeCommand, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String empNo = authInfo.getGrade();
		
		EmployeesDTO dto = new EmployeesDTO();
		dto.setEmpNo(empNo);
		dto.setEmpPhone(employeeCommand.getEmpPhone());
		dto.setEmpOfficeNum(employeeCommand.getEmpOfficeNum());
		dto.setEmpEmail(employeeCommand.getEmpEmail());
		dto.setEmpAddr(employeeCommand.getEmpAddr());
		dto.setEmpDetailAddr(employeeCommand.getEmpDetailAddr());
		dto.setEmpPost(employeeCommand.getEmpPost());
		employeeRepository.empModify(dto);
	}
}
