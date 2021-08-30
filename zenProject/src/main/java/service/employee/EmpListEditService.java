package service.employee;

import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeesDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmpListEditService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empListEdit(EmployeeCommand employeeCommand) {
		EmployeesDTO dto = new EmployeesDTO();
		dto.setEmpNo(employeeCommand.getEmpNo());
		dto.setEmpPhone(employeeCommand.getEmpPhone());
		dto.setEmpOfficeNum(employeeCommand.getEmpOfficeNum());
		dto.setEmpEmail(employeeCommand.getEmpEmail());
		dto.setEmpAddr(employeeCommand.getEmpAddr());
		dto.setEmpDetailAddr(employeeCommand.getEmpDetailAddr());
		dto.setEmpPost(employeeCommand.getEmpPost());
		dto.setEmpJob(employeeCommand.getEmpJob());
		employeeRepository.empListEdit(dto);
	}
}
