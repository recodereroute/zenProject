package service.boardComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardCommentDTO;
import repository.BoardCommentRepository;

public class BoardCommentModifyService {
	@Autowired
	BoardCommentRepository boardCommentRepository;
	public void bcmntModify(BoardCommentDTO boardCommentDTO){
			boardCommentRepository.bcmntModify(boardCommentDTO);
	}
}