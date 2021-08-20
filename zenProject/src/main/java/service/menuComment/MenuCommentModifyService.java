package service.menuComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuCommentDTO;
import repository.MenuCommentRepository;

public class MenuCommentModifyService {
	@Autowired
	MenuCommentRepository menuCommentRepository;
	public void mcmntModify(MenuCommentDTO menuCommentDTO) {
		menuCommentRepository.mcmntModify(menuCommentDTO);
	}
}
