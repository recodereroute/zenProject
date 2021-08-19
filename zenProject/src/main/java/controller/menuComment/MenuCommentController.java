package controller.menuComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.MenuCommentDTO;
import service.menuComment.MenuCommentWriteService;

@Controller
@RequestMapping("menu")
public class MenuCommentController {
@Autowired
MenuCommentWriteService menuCommentWriteService;
	
	@RequestMapping("mcmntWrite")
	public String mcmntWrite(@RequestParam(value="menuNo") String menuNo,
			MenuCommentDTO menuCommentDTO
			)
	{
		menuCommentWriteService.mcmntWrite(menuCommentDTO);
		return "redirect:menuDetail?menuNo="+menuNo;
	}
}
