package service.menu;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.MenuDTO;
import command.MenuCommand;
import repository.MenuRepository;

public class MenuWriteService {
	@Autowired
	MenuRepository menuRepository;
	public void menuWrite(MenuCommand menuCommand, HttpSession session) {
		MenuDTO dto = new MenuDTO();
		String menuNo = menuRepository.menuNo();
		dto.setMenuName(menuCommand.getMenuName());
		dto.setMenuMainItem(menuCommand.getMenuMainItem());
		dto.setMenuSubItem(menuCommand.getMenuSubItem());
		dto.setMenuRecipe(menuCommand.getMenuRecipe());
		dto.setMenuNo(menuNo);
		dto.setEmpNo(menuCommand.getEmpNo());
		
		String path = session.getServletContext().getRealPath("WEB-INF/view/menu/upload");
		String originalTotal = "";
		if(!menuCommand.getMenuImg()[0].getOriginalFilename().equals("")) {
			for(MultipartFile mf : menuCommand.getMenuImg()) {
				String original = mf.getOriginalFilename();
				originalTotal += original + ",";
				File file = new File(path + "/" + original);
				try {
					mf.transferTo(file);
				} catch (Exception e) { 
					e.printStackTrace();
				}
				dto.setMenuImg(originalTotal);
			}
		}
		System.out.println(path);
		menuRepository.menuWrite(dto);
	}
}
