package controller.menuComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.MenuCommentDTO;
import service.menuComment.MenuCommentDeleteService;
import service.menuComment.MenuCommentInfoService;
import service.menuComment.MenuCommentWriteService;

@Controller
@RequestMapping("menu")
public class MenuCommentController {
	@Autowired
	MenuCommentWriteService menuCommentWriteService;
	@Autowired
	MenuCommentDeleteService menuCommentDeleteService;
	@Autowired
	MenuCommentInfoService menuCommentInfoService;
	
	@RequestMapping("mcmntWrite")
	public String mcmntWrite(@RequestParam(value="menuNo") String menuNo,
						MenuCommentDTO menuCommentDTO){
		menuCommentWriteService.mcmntWrite(menuCommentDTO);
		return "redirect:menuDetail?menuNo="+menuNo;
	}
	@RequestMapping("mcmntDelete")
	public String mcmntDelete(@RequestParam(value = "menuCmntNo")String menuCmntNo,
					@RequestParam(value = "menuNo")String menuNo) {
		menuCommentDeleteService.mcmntDelete(menuCmntNo, menuNo);
		return "redirect:menuDetail?menuNo="+menuNo;
	}
	@RequestMapping("mcmntModify")
	public String mcmntModify(@RequestParam(value = "menuCmntNo")String menuCmntNo,
			@RequestParam(value = "menuNo")String menuNo, Model model) {
		menuCommentInfoService.mcmntInfo(menuCmntNo, menuNo, model);
		return "menu/mcmntModify";
	}
}
