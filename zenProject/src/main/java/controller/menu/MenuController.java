package controller.menu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import service.menu.MenuDeleteService;
import service.menu.MenuDetailService;
import service.menu.MenuModifyService;
import service.menu.MenuListService;
import service.menu.MenuWriteService;
import service.menuComment.MenuCommentListService;

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
	
	//硫붾돱 由ъ뒪�듃
	@RequestMapping("menuList")
	public String menuList(@RequestParam(value = "page", defaultValue = "1")Integer page, Model model){
		menuListService.menuList(page, model);
		return "menu/menuList";
	}
	//硫붾돱 �옉�꽦 �럹�씠吏�
	@RequestMapping("menuForm")
	public String menuForm() {
		return "menu/menuForm";
	}
	//硫붾돱 �옉�꽦
	@RequestMapping(value = "menuWrite", method = RequestMethod.POST)
	public String menuWrite(MenuCommand menuCommand, HttpSession session) {
		menuWriteService.menuWrite(menuCommand, session);
		
		return "redirect:menuList";
	}
	//硫붾돱 �뵒�뀒�씪
	@RequestMapping("menuDetail")
	public String menuDetail(@RequestParam(value = "menuNo")String menuNo, Model model) {
		menuDetailService.menuDetail(menuNo,model);
		menuCommentListService.mcmntList(model, menuNo);
		return "menu/menuView";
	}
	//硫붾돱 �닔�젙
	@RequestMapping("menuEdit")
	public String menuEdit(@RequestParam(value = "menuNo")String menuNo,Model model) {
		menuDetailService.menuEdit(menuNo, model);
		return "menu/menuModify";
	}
	//硫붾돱 �궘�젣
	@RequestMapping("menuDel")
	public String menuDel(@RequestParam(value = "menuNo")String menuNo,HttpSession session){
		menuDeleteService.menuDel(menuNo,session);
		return "redirect:menuList";
	}
	@RequestMapping(value="menuModify", method= RequestMethod.POST)
	public String menuModify(MenuCommand menuCommand, HttpSession session){	
		menuModifyService.menuModify(menuCommand,session);
		return "redirect:menuList";	
	}
}
