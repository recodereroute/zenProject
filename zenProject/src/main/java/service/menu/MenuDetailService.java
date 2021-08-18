package service.menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import repository.MenuRepository;

public class MenuDetailService {
	@Autowired
	MenuRepository menuRepository;
	
	public void menuDetail(String menuNo, Model model) {
		MenuDTO dto = menuRepository.menuDetail(menuNo);
		model.addAttribute("dto",dto);
	}
}
