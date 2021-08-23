package controller.bookmark;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.bookmark.BookmarkAddService;
import service.bookmark.BookmarkDeleteService;
import service.bookmark.BookmarkListService;

@Controller
@RequestMapping("bookmark")
public class BookmarkController {
	
	@Autowired
	BookmarkAddService bookmarkAddService;
	@Autowired
	BookmarkListService bookmarkListService;
	@Autowired
	BookmarkDeleteService bookmarkDeleteService;
	@RequestMapping("bookmarkAdd")
	public String bookmarkAdd(
			@RequestParam(value="menuNo") String menuNo,
			@RequestParam(value="memId") String memId,
			Model model
			) {
		bookmarkAddService.bookmarkAdd(menuNo, memId, model);
		return "redirect:bookmarkList?memId="+memId;
		
	}
	@RequestMapping("bookmarkList")
	public String bookmarkList(
			@RequestParam(value="memId") String memId, Model model
			) {
		bookmarkListService.bookmarkList(memId, model);
	
		return "bookmark/bookmarkList";
	}
	@RequestMapping("bookmarkDelete")
	public String bookmarkDel(
			@RequestParam(value="menuNo") String menuNo,
			@RequestParam(value="memId") String memId
			
			) {
		bookmarkDeleteService.bookmarkDel(menuNo,memId);
		return "redirect:bookmarkList";
	}
	

}
	
