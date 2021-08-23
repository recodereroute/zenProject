package service.bookmark;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BoardDTO;
import Model.BookmarkDTO;
import repository.BookmarkRepository;

public class BookmarkListService {
 @Autowired
 BookmarkRepository bookmarkRepository;
 
	public void bookmarkList(String memId , Model model) {
		List<BookmarkDTO> list=bookmarkRepository.bookmarkList(memId);
		model.addAttribute("bmkList",list);
		
		List<String> menuName=bookmarkRepository.getMemName(memId);
		model.addAttribute("menuName",menuName);
		
		

		
	}
	
}
