package controller.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.BoardCommand;
import service.board.BoardDetailService;
import service.board.BoardListService;
import service.board.BoardModifyService;
import service.board.BoardWriteService;

@Controller
@RequestMapping("board")
public class BoardController {
@Autowired
BoardWriteService boardWriteService;
@Autowired
BoardListService boardListService;
@Autowired
BoardDetailService boardDetailService;
@Autowired
BoardModifyService boardModifyService;
	@RequestMapping("boardList")
	public String boardList(
			Model model
			) {
		boardListService.boardList(model);
		return "board/boardList";
	}
@RequestMapping("boardWrite")
public String bouarWrite(
		BoardCommand boardCommand,HttpSession httpsession
		) {
	boardWriteService.boardWrite(boardCommand, httpsession);
	return "redirect:boardList";
}
@RequestMapping("boardForm")
public String noticeForm() {
	
	return "board/boardForm"; 
	
}
@RequestMapping("boardDetail")
public String boardDetail(
		@RequestParam(value="boardNo")String boardNo,
		Model model
		) {
	boardDetailService.boardDetail(boardNo, model);
	return "board/boardView";
}
@RequestMapping("boardUpdate")
public String boardUpdate(
		@RequestParam(value="boardNo")String boardNo,
		Model model
		) {
	boardDetailService.boardDetail(boardNo, model);
	return "board/boardModify";
}

@RequestMapping(value="boardModify",method = RequestMethod.POST)
public String boardModify(
		BoardCommand boardCommand,
		HttpSession session
		) {
	boardModifyService.boardModify(boardCommand,session);
	
	return"redirect:boardList";
}
}
