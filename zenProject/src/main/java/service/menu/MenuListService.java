package service.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.MenuRepository;

public class MenuListService {
	@Autowired
	MenuRepository menuRepository;
	
	public void menuList(Integer page, Model model) {
		MenuDTO dto = new MenuDTO();
		
		int limit = 12;//페이지에 보여지는 리스트
		int limitPage = 5; //페이지 수
		
		
		if (page != null) {
			//시작행
			Long startRow = ((long) page - 1) * limit + 1;
			//마지막행 > 다채워지면 다음 페이지
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		List<MenuDTO> list = menuRepository.menuList(dto);
		int count = menuRepository.count();
		model.addAttribute("lists", list);
		model.addAttribute("count", count);
		if(page!=null) {
		PageAction pageAction = new PageAction();
		pageAction.page(count, limit, page, limitPage, model, "menuList");}
	}
}
