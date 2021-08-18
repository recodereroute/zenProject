package service.boardComment;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardCommentDTO;
import repository.BoardCommentRepository;

public class BoardCommentModifyService {
	@Autowired
	BoardCommentRepository boardCommentRepository;
public void bcmntModify(String boardCmntNo, String boardNo)
{
	BoardCommentDTO dto= new BoardCommentDTO();
	dto.setBoardCmntCon(boardCmntNo);
	dto.setBoardNo(boardNo);
	System.out.println(boardCmntNo);
	System.out.println(boardNo);
	boardCommentRepository.bcmntModify(dto);
}
}
