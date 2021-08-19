package service.menuComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuCommentDTO;
import repository.MenuCommentRepository;

public class MenuCommentWriteService {
@Autowired
MenuCommentRepository menuCommentRepository;

public void mcmntWrite(MenuCommentDTO menuCommentDTO) {
	String mcmntNo=menuCommentRepository.mcmntNo(menuCommentDTO);
	menuCommentDTO.setMenuCmntNo(mcmntNo);
	menuCommentRepository.mcmntWrite(menuCommentDTO);
}
}
