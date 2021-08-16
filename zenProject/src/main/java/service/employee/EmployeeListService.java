package service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.EmployeesDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.EmployeeRepository;

public class EmployeeListService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empList(Model model, int page) {
		int limit = 5;
		int limitPage = 10;
		
		Long startRow = ((long)page - 1) * limit + 1;
		Long endRow = startRow + limit - 1;
		StartEndPageDTO sep = new StartEndPageDTO();
		sep.setStartRow(startRow);
		sep.setEndRow(endRow);
		
		EmployeesDTO dto = new EmployeesDTO();
		dto.setStartEndPageDTO(sep);
		List<EmployeesDTO> list = employeeRepository.empList();
		model.addAttribute("list",list);
		int count = list.size();
		
		PageAction pageAction = new PageAction();
		pageAction.page(count, limit, page, limitPage, model, "empList");
	}
}
