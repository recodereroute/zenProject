package service.bookmark;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BookmarkDTO;
import repository.BookmarkRepository;

public class BookmarkListService {
 @Autowired
 BookmarkRepository bookmarkRepository;
	public void bookmarkList(String menuNo , Model model) {
		List<BookmarkDTO> list=bookmarkRepository.bookmarkList(menuNo);
		model.addAttribute("bmkList",list);
	}
	
}
