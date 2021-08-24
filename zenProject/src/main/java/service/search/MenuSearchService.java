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
		int limit = 3;//페이지에 보여지는 리스트
		int limitPage = 5; //페이지 수
		List<MenuDTO> list = searchRepository.menuSearch(searchCon);
		int count = searchRepository.count();
		model.addAttribute("lists", list);
		model.addAttribute("count", count);
		if (page != null) {
			//시작행
			Long startRow = ((long) page - 1) * limit + 1;
			//마지막행 > 다채워지면 다음 페이지
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "searchList");
		}
	}
}
