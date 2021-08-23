package service.bookmark;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BookmarkDTO;
import repository.BookmarkRepository;

public class BookmarkAddService {
	@Autowired
	BookmarkRepository bookmarkRepository;
	public void boomarkAdd(String menuNo, String memId,Model model) {
			BookmarkDTO bookmarkDTO=new BookmarkDTO();
			bookmarkDTO.setBookMarkKind("1");
			bookmarkDTO.setMemId(memId);
			bookmarkDTO.setMenuNo(menuNo);
			bookmarkRepository.boomarkAdd(bookmarkDTO);
			model.addAttribute("dto",bookmarkDTO);
			
		
	}
}
