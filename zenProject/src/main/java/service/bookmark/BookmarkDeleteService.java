package service.bookmark;

import org.springframework.beans.factory.annotation.Autowired;

import Model.BookmarkDTO;
import repository.BookmarkRepository;

public class BookmarkDeleteService {
	@Autowired
	BookmarkRepository bookmarkRepository;
	public void bookmarkDel(String menuNo,  String memId) {
		BookmarkDTO bookmarkDTO=new BookmarkDTO();
		bookmarkDTO.setMenuNo(menuNo);
		bookmarkDTO.setMemId(memId);
		bookmarkRepository.bookmarkDel(bookmarkDTO);
			
	}
}
