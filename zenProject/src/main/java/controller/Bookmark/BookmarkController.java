package controller.Bookmark;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("bookmark")
public class BookmarkController {
	public String bookmakrAdd(
			@RequestParam(value="menuNo") String menuNo,
			@RequestParam(value="memId") String memId,
			Model model
			) {
		return null;
	}
	public String bookmarkList() {
		
	return null;
	}
	
}
