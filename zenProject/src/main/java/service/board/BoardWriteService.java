package service.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.BoardDTO;
import command.BoardCommand;
import repository.BoardRepository;

public class BoardWriteService {
@Autowired
BoardRepository boardRepository; 
	public void boardWrite(BoardCommand boardCommand,HttpSession session) {
		
		AuthInfoDTO authInfo =(AuthInfoDTO)session.getAttribute("authInfo");
		String memId=authInfo.getUserId();
		BoardDTO dto= new BoardDTO();
		dto.setBoardNo(boardCommand.getBoardNo());
		dto.setBoardTitle(boardCommand.getBoardTitle());
		dto.setBoardFile(boardCommand.getBoardFile());
		dto.setBoardCon(boardCommand.getBoardCon());
		dto.setMemId(memId);
		boardRepository.boardWrite(dto);
		
		
		
		
		
		
	}
}
