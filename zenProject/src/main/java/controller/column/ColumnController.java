package controller.column;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.column.ColumnDeleteService;
import service.column.ColumnDetailService;
import service.column.ColumnListService;
import service.column.ColumnModifyService;
import service.column.ColumnWriteService;
import service.notice.NoticeListService;

@Controller
@RequestMapping("column")
public class ColumnController {
	@Autowired
	ColumnWriteService columnWriteService;
	@Autowired
	ColumnListService columnListService;
	@Autowired
	ColumnDetailService columnDetailService;
	@Autowired
	ColumnModifyService columnModifyService;
	@Autowired
	ColumnDeleteService columnDeleteService;
	@Autowired
	NoticeListService noticeListService;
	
	 @RequestMapping("columnForm")
		public String columnForm() {
		 return "column/columnForm";
		}
	 @RequestMapping("columnWrite")
	 public String columnWrite(
			 NoticeCommand noticeCommand,HttpSession session
			 ) {
		 columnWriteService.columnWrite(noticeCommand, session);
		 return "redirect:columnList";
	 }
	 @RequestMapping("columnList")
	 public String columnList(@RequestParam(value="page",defaultValue = "1") Integer page, Model model) {
		 columnListService.columnList(model,page);
		 noticeListService.noticeList(page, model);
		 return "column/columnList";
	 }
	 @RequestMapping("columnDetail")
	 public String columnDetail(
				@RequestParam(value="noticeNo")String noticeNo,
				Model model
			 ) {
		 columnDetailService.columnDetail(noticeNo, model);
		 return "column/columnDetail";	 
	 }
	 @RequestMapping("columnUpdate")
	 public String columnUpdate(
			 @RequestParam(value="noticeNo")String noticeNo,
				Model model
			 ){
		 columnDetailService.columnUpdate(noticeNo, model);
		 return "column/columnModify";
	 }
 	@RequestMapping(value="columnModify",method = RequestMethod.POST)
	public String columnModify(
			NoticeCommand noticeCommand
			) {
		columnModifyService.columnModify(noticeCommand);
		return"redirect:columnList";
	}
	@RequestMapping("columnDel")
	public String columnDel(
			@RequestParam(value="noticeNo") String noticeNo
			) {
		columnDeleteService.columnDel(noticeNo);
		return "redirect:columnList";
	}
}