package controller.boardComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.BoardCommentDTO;
import service.boardComment.BoardCommentWriteService;

@Controller
@RequestMapping("board")
public class BoardCommentController {
	@Autowired
	BoardCommentWriteService boardCommentWriteService;
	@RequestMapping("bcmntWrite")
	public String bcmntWrite(@RequestParam(value="boardNo")String boardNo,
							BoardCommentDTO boardCommentDTO) {
		boardCommentWriteService.bcmntWrite(boardCommentDTO);
		return "redirect:boardDetail?boardNo="+boardNo;
	}
	
}
