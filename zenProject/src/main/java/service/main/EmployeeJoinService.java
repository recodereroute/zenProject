package service.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.EmployeesDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeJoinService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	public void empJoin(EmployeeCommand employeeCommand) {
		EmployeesDTO dto = new EmployeesDTO();
		dto.setEmpAddr(employeeCommand.getEmpAddr());
		dto.setEmpDetailAddr(employeeCommand.getEmpDetailAddr());
		dto.setEmpEmail(employeeCommand.getEmpEmail());
		dto.setEmpId(employeeCommand.getEmpId());
		dto.setEmpJob(employeeCommand.getEmpJob());
		dto.setEmpName(employeeCommand.getEmpName());
		dto.setEmpNo(employeeCommand.getEmpNo());
		dto.setEmpOfficeNum(employeeCommand.getEmpOfficeNum());
		dto.setEmpPhone(employeeCommand.getEmpPhone());
		dto.setEmpPost(employeeCommand.getEmpPost());
		dto.setEmpPw(bcryptPasswordEncoder.encode(employeeCommand.getEmpPw()));
		dto.setEmpHireDate(employeeCommand.getEmpHireDate());
		employeeRepository.empJoin(dto);
		
	}

}
