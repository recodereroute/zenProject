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
		EmployeesDTO dto = new EmployeesDTO();
		
		List<EmployeesDTO> list = employeeRepository.empList();
		model.addAttribute("list",list);
		
		int count = list.size();
		int limit = 3;
		int limitPage = 5;
		
		model.addAttribute("maxPage", count/limit);
		model.addAttribute("startPage", page/limitPage);
		model.addAttribute("endPage", limitPage);
		model.addAttribute("page", page);
		model.addAttribute("pageUrl", "empList");
	}
}
