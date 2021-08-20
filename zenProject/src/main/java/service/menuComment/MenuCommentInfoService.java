package service.menuComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuCommentDTO;
import repository.MenuCommentRepository;

public class MenuCommentInfoService {
	@Autowired
	MenuCommentRepository menuCommentRepository;
	public void mcmntInfo(String menuCmntNo, String menuNo, Model model) {
		MenuCommentDTO menuCommentDTO = new MenuCommentDTO();
		menuCommentDTO.setMenuNo(menuNo);
		menuCommentDTO.setMenuCmntNo(menuCmntNo);
		menuCommentDTO = menuCommentRepository.mncntInfo(menuCommentDTO);
		model.addAttribute("command",menuCommentDTO);
	}
}
