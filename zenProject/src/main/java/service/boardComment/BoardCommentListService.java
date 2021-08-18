package service.boardComment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BoardCommentDTO;
import repository.BoardCommentRepository;

public class BoardCommentListService {
 @Autowired
 BoardCommentRepository boardCommentRepository;
	public void cmntList(Model model,String boardNo) {
		
		List<BoardCommentDTO> list=boardCommentRepository.cmntList(boardNo);
		model.addAttribute("bcmntList", list);
		
	}
}
