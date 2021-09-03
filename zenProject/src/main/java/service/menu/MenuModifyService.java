package service.menu;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.MenuDTO;
import command.MenuCommand;
import repository.MenuRepository;

public class MenuModifyService {
@Autowired
MenuRepository menuRepository;
	public void menuModify(MenuCommand menuCommand,HttpSession session ) {
		MenuDTO dto = new MenuDTO();
		dto.setMenuNo(menuCommand.getMenuNo());
		dto.setMenuName(menuCommand.getMenuName());
		dto.setMenuMainItem(menuCommand.getMenuMainItem());
		dto.setMenuSubItem(menuCommand.getMenuSubItem());
		dto.setMenuRecipe(menuCommand.getMenuRecipe());
		if(menuCommand.getMenuImg()!=null) {
			String realPath=session.getServletContext().getRealPath("WEB-INF/view/menu/upload");
			String storeFile="";
			for(MultipartFile mf: menuCommand.getMenuImg()) {
					String original =mf.getOriginalFilename();
					String fileNameExt=original.substring(original.lastIndexOf("."));
					String store=UUID.randomUUID().toString().replace("-","")+fileNameExt;
					File file= new File(realPath+"/"+store);
					try {mf.transferTo(file);} 
					catch (Exception e) {e.printStackTrace();} 
					storeFile = storeFile + store + ",";
			}
			dto.setMenuImg(storeFile);
		}
		
		
		menuRepository.menuModify(dto);
	}
	
}