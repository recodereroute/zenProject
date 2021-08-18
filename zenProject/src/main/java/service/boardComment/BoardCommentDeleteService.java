package service.boardComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardCommentDTO;
import repository.BoardCommentRepository;

public class BoardCommentDeleteService {
	@Autowired
	BoardCommentRepository boardCommentRepository;
	public void bcmntDelete(String boardCmntNo, String boardNo) {
		BoardCommentDTO boardCommentDTO = new BoardCommentDTO();
		boardCommentDTO.setBoardCmntNo(boardCmntNo);
		boardCommentDTO.setBoardNo(boardNo);
		boardCommentRepository.bcmntDelete(boardCommentDTO);
	}
}
