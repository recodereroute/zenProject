package controller.bookmark;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.bookmark.BookmarkAddService;
import service.bookmark.BookmarkListService;

@Controller
@RequestMapping("bookmark")
public class BookmarkController {
	
	@Autowired
	BookmarkAddService bookmarkAddService;
	@Autowired
	BookmarkListService bookmarkListService;
	@RequestMapping("bookmarkAdd")
	public String bookmarkAdd(
			@RequestParam(value="menuNo") String menuNo,
			@RequestParam(value="memId") String memId,
			Model model
			) {
		bookmarkAddService.boomarkAdd(menuNo, memId, model);
		
		return "bookmark/bookmarkList";
	}
	@RequestMapping("bookmarkList")
	public String bookmarkList(
			@RequestParam(value="menuNo") String menuNo , Model model
			) {
		bookmarkListService.bookmarkList(menuNo, model);

	return "redirect:bookmarkList";
	}
	@RequestMapping("bookmarkDelete")
	public String bookmarkDel(
			@RequestParam(value="menuNo") String menuNo,
			@RequestParam(value="memId") String memId
			
			) {
		
		return "redirect:bookmarkList";
	}
	

}
	
