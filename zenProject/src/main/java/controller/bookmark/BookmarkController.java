package controller.bookmark;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.BookmarkDTO;
import service.bookmark.BookmarkAddService;
import service.bookmark.BookmarkDeleteService;
import service.bookmark.BookmarkListService;
import service.menu.MenuDetailService;

@Controller
@RequestMapping("bookmark")
public class BookmarkController {
	
	@Autowired
	BookmarkAddService bookmarkAddService;
	@Autowired
	BookmarkListService bookmarkListService;
	@Autowired
	BookmarkDeleteService bookmarkDeleteService;
	@Autowired
	MenuDetailService menuDetailService;
	@RequestMapping("bookmarkAdd")
	public String bookmarkAdd(
			@RequestParam(value="memId") String memId,BookmarkDTO bookmarkDTO
			) {
		bookmarkAddService.bookmarkAdd(memId, bookmarkDTO);
		return "bookmark/1";
	}
	@RequestMapping("bookmarkList")
	public String bookmarkList(
			@RequestParam(value="memId")String memId , Model model
			) {
		bookmarkListService.bookmarkList(memId, model);
		return "bookmark/bookmarkList";
	}
	@RequestMapping("bookmarkDelete")
	public String bookmarkDelete(
			@RequestParam(value="memId")String memId,
			@RequestParam(value="menuNo") String menuNo
			) {
		bookmarkDeleteService.bookmarkDelete(memId,menuNo);
		return "redirect:bookmarkList?memId="+memId;
	}
	

}
	
