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
	public String bookmakrAdd(
			@RequestParam(value="menuNo") String menuNo,
			@RequestParam(value="memId") String memId,
			Model model
			) {
		bookmarkAddService.boomarkAdd(menuNo, memId, model);
		
		return "";
	}
	@RequestMapping("bookmarkList")
	public String bookmarkList(
			@RequestParam(value="menuNo") String menuNo , Model model
			) {
		bookmarkListService.bookmarkList(menuNo, model);

	return "bookmark/bookmarkList";
	}

}
	
