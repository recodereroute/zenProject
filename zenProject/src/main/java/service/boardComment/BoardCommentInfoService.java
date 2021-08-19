package service.boardComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BoardCommentDTO;
import repository.BoardCommentRepository;

public class BoardCommentInfoService {
	@Autowired
	BoardCommentRepository boardCommentRepository;
	public void bcmntInfo(String boardCmntNo, String boardNo, Model model) {
		BoardCommentDTO boardCommentDTO = new BoardCommentDTO();
		boardCommentDTO.setBoardCmntNo(boardCmntNo);
		boardCommentDTO.setBoardNo(boardNo);
		boardCommentDTO = boardCommentRepository.bcmntInfo(boardCommentDTO);
		model.addAttribute("dto",boardCommentDTO);
	}
}
