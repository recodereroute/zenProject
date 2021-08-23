package service.bookmark;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BookmarkDTO;
import repository.BookmarkRepository;

public class BookmarkDeleteService {
	@Autowired
	BookmarkRepository bookmarkRepository;
	public void bookmarkDelete(String memId, String menuNo) {
		BookmarkDTO bookmarkDTO=new BookmarkDTO();
		bookmarkDTO.setMemId(memId);
		bookmarkDTO.setMenuNo(menuNo);
		bookmarkRepository.bookmarkDelete(bookmarkDTO);
			
	}
}
