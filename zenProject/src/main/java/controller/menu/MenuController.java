package controller.menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.menu.MenuListService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired
	MenuListService menuListService;
	
	
	@RequestMapping("menuList")
	public String menuList(@RequestParam(value = "page", defaultValue = "1")Integer page, Model model){
		menuListService.menuList(page, model);
		return "menu/menuList";
	}
}
