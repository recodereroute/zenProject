package service.menu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;


import Model.MenuDTO;
import command.MenuCommand;
import repository.MenuRepository;

public class MenuModifyService {
@Autowired
MenuRepository menuRepository;
	public void menuModify(MenuCommand menuCommand,HttpSession session ) {
		MenuDTO dto = new MenuDTO();
		dto.setMenuNo(menuCommand.getMenuNo());
		dto.setMenuName(menuCommand.getMenuName());
		dto.setMenuMainItem(menuCommand.getMenuMainItem());
		dto.setMenuSubItem(menuCommand.getMenuSubItem());
		dto.setMenuRecipe(menuCommand.getMenuRecipe());
		MenuDTO fdto = menuRepository.menuDetail(menuCommand.getMenuNo());
		String store = fdto.getMenuImg();
		dto.setMenuImg(store);
		menuRepository.menuModify(dto);
	}
	
}