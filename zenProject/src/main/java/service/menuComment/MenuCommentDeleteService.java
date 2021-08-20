package service.menuComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuCommentDTO;
import repository.MenuCommentRepository;

public class MenuCommentDeleteService {
	@Autowired
	MenuCommentRepository menuCommentRepository;
	public void mcmntDelete(String menuCmntNo, String menuNo) {
		MenuCommentDTO menuCommentDTO = new MenuCommentDTO();
		menuCommentDTO.setMenuNo(menuNo);
		menuCommentDTO.setMenuCmntNo(menuCmntNo);
		menuCommentRepository.mcmntDelete(menuCommentDTO);
	}
}
