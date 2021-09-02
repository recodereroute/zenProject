package service.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import repository.MenuRepository;


public class MainMenuListService {
	@Autowired
	MenuRepository menuRepository;
	public void mainMenuList(Model model) {
		List<MenuDTO> list =menuRepository.mainMenuList();
		model.addAttribute("mainMenuList",list);
	}
}
