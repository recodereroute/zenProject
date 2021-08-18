package service.boardComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardCommentDTO;
import repository.BoardCommentRepository;

public class BoardCommentWriteService {
	@Autowired
	BoardCommentRepository boardCommentRepository;
	public void bcmntWrite(BoardCommentDTO boardCommentDTO) {
		String bcmntNo = boardCommentRepository.bcmntNo(boardCommentDTO);
		boardCommentDTO.setBoardCmntNo(bcmntNo);
		
		
		
		
		
		boardCommentRepository.bcmntWrite(boardCommentDTO);
	}
}
