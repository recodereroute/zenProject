package controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import controller.board.FileDownLoad;
import service.notice.NoticeDeleteService;
import service.notice.NoticeDetailService;
import service.notice.NoticeEditService;
import service.notice.NoticeListService;
import service.notice.NoticeWriteService;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	NoticeListService noticeListService;
	@Autowired
	NoticeWriteService noticeWriteService;
	@Autowired
	NoticeDetailService noticeDetailService;
	@Autowired
	NoticeDeleteService noticeDeleteService;
	@Autowired
	NoticeEditService noticeEditService;
	@RequestMapping("fileDown")
	public void fileDown(@RequestParam(value="str")String store,
						 @RequestParam(value="org")String original,
						 HttpServletRequest request, HttpServletResponse response) {
		String path = "WEB-INF/view/notice/upload";
		FileDownLoad fileDownLoad = new FileDownLoad();
		fileDownLoad.fileDownLoad(path, store, original, request, response);
	}
	
	@RequestMapping("noticeList")
	public String noticeList(Model model) {
		noticeListService.noticeList(model);
		
		return "notice/noticeList";
	}
	@RequestMapping("noticePost")
	public String noticePost() {
		return "notice/noticePost";
	}
	@RequestMapping(value = "noticeWrite", method = RequestMethod.POST)
	public String noticeWrite(NoticeCommand noticeCommand, HttpSession session) {
		noticeWriteService.noticeWrite(noticeCommand, session);
		return "redirect:noticeList";
	}
	@RequestMapping("noticeDetail")
	public String noticeDetail(@RequestParam(value = "noticeNo")String noticeNo, Model model) {
		noticeDetailService.noticeDetail(noticeNo, model);
		return "notice/noticeDetail";
	}
	@RequestMapping("noticeEdit")
	public String noticeEdit(@RequestParam(value = "noticeNo")String noticeNo, Model model) {
		noticeDetailService.noticeInfo(noticeNo, model);
		return "notice/noticeEdit";
	}
	//공지사항 삭제
	@RequestMapping("noticeDel")
	public String noticeDel(String noticeNo) {
		noticeDeleteService.noticeDel(noticeNo);
		return "redirect:noticeList";
	}
	//공지사항 수정
	@RequestMapping(value = "noticeEditOk", method = RequestMethod.POST)
	public String notieEditOk(NoticeCommand noticeCommand,HttpSession session) {
		noticeEditService.notieceEdit(noticeCommand,session);
		return "redirect:noticeList";
	}
}
