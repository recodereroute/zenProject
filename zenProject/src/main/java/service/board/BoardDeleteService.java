package service.board;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardDTO;
import repository.BoardRepository;

public class BoardDeleteService {
@Autowired
BoardRepository boardRepository;
	public void boardDel(String boardNo, HttpSession session) {
		BoardDTO dto= boardRepository.boardDetail(boardNo);
		
		String []fileNames=
					dto.getBoardFile().split(",");
		
		String realPath=session.getServletContext().getRealPath("WEB-INF/view/library/upload");
		for(String fileName : fileNames) {
			File f= new File(realPath+"/"+fileName);
			if(f.exists()) f.delete();
		}
		boardRepository.boardDel(boardNo);
	}
}