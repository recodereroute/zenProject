package controller.menu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import service.menu.MenuDetailService;
import service.menu.MenuListService;
import service.menu.MenuWriteService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired
	MenuListService menuListService;
	@Autowired
	MenuDetailService menuDetailService;
	@Autowired
	MenuWriteService menuWriteService;
	//메뉴 리스트
	@RequestMapping("menuList")
	public String menuList(@RequestParam(value = "page", defaultValue = "1")Integer page, Model model){
		menuListService.menuList(page, model);
		return "menu/menuList";
	}
	//메뉴 디테일
	@RequestMapping("menuDetail")
	public String menuDetail(@RequestParam(value = "menuNo")String menuNo, Model model) {
		menuDetailService.menuDetail(menuNo,model);
		return "menu/menuView";
	}
	//메뉴 작성 페이지
	@RequestMapping("menuForm")
	public String menuForm() {
		return "menu/menuForm";
	}
	//메뉴 작성
	@RequestMapping(value = "menuWrite", method = RequestMethod.POST)
	public String menuWrite(MenuCommand menuCommand, HttpSession session) {
		menuWriteService.menuWrite(menuCommand, session);
		return "redirect:menuList";
	}
	//메뉴 수정
//	@RequestMapping("menuEdit")
//	public String menuEdit(@RequestParam(value = "memuNo")String menuNo,Model model) {
//		menuEditService.menuEdit(menuNo,model);
//		return "menu/menuList";
//	}
}
