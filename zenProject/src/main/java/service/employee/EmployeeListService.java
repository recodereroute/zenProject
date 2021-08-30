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
	public void empList(Model model, Integer page) {
		EmployeesDTO dto = new EmployeesDTO();
		int limit = 5;
		int limitPage = 10;
		if(page != null) {
			Long startRow = ((long)page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		List<EmployeesDTO> list = employeeRepository.empList(dto);
		int count = employeeRepository.count();
		model.addAttribute("list",list);
		model.addAttribute("count", count);
		if(page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "empList");
		}
	}
}
