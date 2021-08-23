package service.bookmark;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BookmarkDTO;
import repository.BookmarkRepository;

public class BookmarkAddService {
	@Autowired
	BookmarkRepository bookmarkRepository;
	public void bookmarkAdd(String memId ,BookmarkDTO bookmarkDTO) {
			bookmarkDTO.setBookMarkKind("1");
			bookmarkDTO.setMemId(memId);
			System.out.println(memId);
			System.out.println(bookmarkDTO.getMenuNo()); 
			
			bookmarkRepository.bookmarkAdd(bookmarkDTO);
		
	}
}
