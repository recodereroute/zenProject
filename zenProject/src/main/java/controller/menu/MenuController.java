package controller.menu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import service.menu.MenuDeleteService;
import service.menu.MenuDetailService;
import service.menu.MenuListService;
import service.menu.MenuModifyService;
import service.menu.MenuWriteService;
import service.menuComment.MenuCommentListService;
import validator.MenuFormValidator;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired
	MenuListService menuListService;
	@Autowired
	MenuDetailService menuDetailService;
	@Autowired
	MenuWriteService menuWriteService;
	@Autowired
	MenuDeleteService menuDeleteService;
	@Autowired
	MenuModifyService menuModifyService;
	@Autowired
	MenuCommentListService menuCommentListService;

	@RequestMapping("menuList")
	public String menuList(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		menuListService.menuList(page, model);
		return "menu/menuList";
	}

	@RequestMapping("menuForm")
	public String menuForm() {
		return "menu/menuForm";
	}

	@RequestMapping(value = "menuWrite", method = RequestMethod.POST)
	public String menuWrite(MenuCommand menuCommand, HttpSession session, Errors errors) {
		new MenuFormValidator().validate(menuCommand, errors);
		if (errors.hasErrors()) {
			return "menu/menuForm";
		} else {
			menuWriteService.menuWrite(menuCommand, session);
			return "redirect:menuList";
		}

	}

	@RequestMapping("menuDetail")
	public String menuDetail(@RequestParam(value = "menuNo") String menuNo, Model model) {
		menuDetailService.menuDetail(menuNo, model);
		menuCommentListService.mcmntList(model, menuNo);
		return "menu/menuView";
	}

	@RequestMapping("menuEdit")
	public String menuEdit(@RequestParam(value = "menuNo") String menuNo, Model model) {
		menuDetailService.menuEdit(menuNo, model);
		return "menu/menuModify";
	}

	@RequestMapping(value="menuModify", method= RequestMethod.POST)
	public String menuModify(MenuCommand menuCommand, HttpSession session,Errors errors){
		System.out.println("컨트롤러 진입");
		new MenuFormValidator().validate(menuCommand, errors);
		if(errors.hasErrors()) {
			System.out.println("에러발생");
			return "menu/menuModify";
		}
		System.out.println("서비스진입");
		menuModifyService.menuModify(menuCommand, session);
		System.out.println("서비스완료");
		return "redirect:menuList";
	}
	@RequestMapping("menuDel")
	public String menuDel(@RequestParam(value = "menuNo") String menuNo, HttpSession session) {
		menuDeleteService.menuDel(menuNo, session);
		return "redirect:menuList";
	}

}
