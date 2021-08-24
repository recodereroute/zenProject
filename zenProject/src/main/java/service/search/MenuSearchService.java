package service.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.SearchRepository;

public class MenuSearchService {
	@Autowired
	SearchRepository searchRepository;
	public void menuSearch(String searchCon, Integer page, Model model) {
		MenuDTO dto = new MenuDTO();
		dto.setMenuName(searchCon);
		int limit = 3;//페이지에 보여지는 리스트
		int limitPage = 5; //페이지 수
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		List<MenuDTO> list = searchRepository.menuSearch(dto);
		int count = searchRepository.count(searchCon);
		model.addAttribute("lists", list);
		model.addAttribute("count", count);
		if (page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "menuSearch?searchCon="+searchCon+"&");
		}
	}
}
