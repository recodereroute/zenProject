package service.menu;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuDTO;
import repository.MenuRepository;

public class MenuDeleteService {
	@Autowired
	MenuRepository menuRepository;
	public void menuDel(String menuNo, HttpSession session) {
		MenuDTO dto = menuRepository.menuDetail(menuNo);
		if(dto.getMenuImg() != null) {
			String[] fileNames = dto.getMenuImg().split(",");
			
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/menu/upload");
			for(String fileName : fileNames) {
				File file = new File(realPath + "/" + fileName);
				if(file.exists()) { file.delete(); }
			}
		}
		menuRepository.menuDel(menuNo);
	}
}
