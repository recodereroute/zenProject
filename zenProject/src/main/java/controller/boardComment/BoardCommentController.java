package controller.boardComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.BoardCommentDTO;
import service.boardComment.BoardCommentDeleteService;
import service.boardComment.BoardCommentWriteService;

@Controller
@RequestMapping("board")
public class BoardCommentController {
	@Autowired
	BoardCommentWriteService boardCommentWriteService;
	@Autowired
	BoardCommentDeleteService boardCommentDeleteService;
	@RequestMapping("bcmntWrite")
	public String bcmntWrite(@RequestParam(value="boardNo")String boardNo,
							BoardCommentDTO boardCommentDTO) {
		boardCommentWriteService.bcmntWrite(boardCommentDTO);
		return "redirect:boardDetail?boardNo="+boardNo;
	}
	@RequestMapping("bcmntDelete")
	public String bcmntDelete(@RequestParam(value="boardCmntNo")String boardCmntNo,
						@RequestParam(value="boardNo")String boardNo) {
		boardCommentDeleteService.bcmntDelete(boardCmntNo, boardNo);
		return "redirect:boardDetail?boardNo="+boardNo;
	}
}