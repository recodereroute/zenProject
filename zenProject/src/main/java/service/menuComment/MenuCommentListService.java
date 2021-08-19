package service.menuComment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuCommentDTO;
import repository.MenuCommentRepository;

public class MenuCommentListService {
	@Autowired
	MenuCommentRepository menuCommentRepository;

	public void mcmntList(Model model, String menuNo) {
		List<MenuCommentDTO> list = menuCommentRepository.mcmntList(menuNo);
		model.addAttribute("mcmntList", list);
	}
}
