package controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.BoardCommand;
import service.board.BoardDeleteService;
import service.board.BoardDetailService;
import service.board.BoardListService;
import service.board.BoardModifyService;
import service.board.BoardWriteService;
import service.boardComment.BoardCommentListService;
import service.notice.NoticeListService;

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
	@Autowired
	BoardDeleteService boardDeleteService;
	@Autowired
	BoardCommentListService boardCommentListService;
	@Autowired
	NoticeListService noticeListService;
	@RequestMapping("boardList")
	public String boardList(@RequestParam(value="page",defaultValue = "1")Integer page, Model model) {
		boardListService.boardList( page,model);
		return "board/boardList";
	}
	@RequestMapping("boardWrite")
	public String bouarWrite(
			BoardCommand boardCommand,HttpSession session
			) {
		boardWriteService.boardWrite(boardCommand, session);
		return "redirect:boardList";
	}
	@RequestMapping("boardForm")
	public String noticeForm() {
		return "board/boardForm"; 
	}
	@RequestMapping("boardDetail")
	public String boardDetail(@RequestParam(value="boardNo")String boardNo, Model model) {
		boardDetailService.boardDetail(boardNo, model);
		boardCommentListService.cmntList(model,boardNo); 
		
		return "board/boardView";
	}
	@RequestMapping("boardUpdate")
	public String boardUpdate(@RequestParam(value="boardNo")String boardNo, Model model) {
		boardDetailService.boardUpdate(boardNo, model);
		return "board/boardModify";
	}
	
	@RequestMapping(value="boardModify",method = RequestMethod.POST)
	public String boardModify(BoardCommand boardCommand, HttpSession session) {
		boardModifyService.boardModify(boardCommand,session);
		return"redirect:boardList";
	}
	@RequestMapping("boardDel")
	public String boardDel(@RequestParam(value="boardNo") String boardNo,
						HttpSession session) {
		boardDeleteService.boardDel(boardNo,session);
		return "redirect:boardList";
	}
	@RequestMapping("fileDown")
	public void fileDown(
			@RequestParam(value="str")String store,
			@RequestParam(value="org") String original,
			HttpServletRequest request,HttpServletResponse response
			) {
		String path="WEB-INF/view/library/upload";
		FileDownLoad fileDownLoad= new FileDownLoad();
		fileDownLoad.fileDownLoad(path,store,original,request,response);
	}
}
