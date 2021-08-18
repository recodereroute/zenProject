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
		
		List<BoardCommentDTO> bclist=boardCommentRepository.cmntList(boardNo);
		System.out.println(bclist.get(1).getBoardCmntNo());
		System.out.println(bclist.get(0).getBoardCmntNo());
		System.out.println(bclist.get(0).getBoardCmntDate());
		
		model.addAttribute("bcmntList", bclist);
		
	}
}
