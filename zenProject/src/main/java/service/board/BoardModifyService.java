package service.board;

import org.springframework.beans.factory.annotation.Autowired;

import command.BoardCommand;
import Model.BoardDTO;
import repository.BoardRepository;

public class BoardModifyService {
@Autowired
BoardRepository boardRepository;
public void boardModify(BoardCommand boardCommand) {
		BoardDTO dto=new BoardDTO();
		dto.setBoardNo(boardCommand.getBoardNo());
		dto.setBoardCon(boardCommand.getBoardCon());
		dto.setBoardTitle(boardCommand.getBoardTitle());
		boardRepository.boardModify(dto);
}
}
