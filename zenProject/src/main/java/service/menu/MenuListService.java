package service.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import Model.StartEndPageDTO;
import command.MenuCommand;
import controller.board.PageAction;
import repository.MenuRepository;

public class MenuListService {
	@Autowired
	MenuRepository menuRepository;
	
	public void menuList(Integer page, Model model) {
		MenuDTO dto = new MenuDTO();
		
		int limit = 2;
		
		int limitPage = 1;
		
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}

		List<MenuDTO> list = menuRepository.menuList(dto);
		int count = menuRepository.count();
		model.addAttribute("lists", list);
		model.addAttribute("count", count);
		if (page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "menuList");
		}
	}
}
