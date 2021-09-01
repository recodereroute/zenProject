package controller.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import service.search.MenuSearchService;
import service.search.SelectSearchService;

@Controller
public class SearchController {
	@Autowired
	MenuSearchService menuSearchService;
	@Autowired
	SelectSearchService selectSearchService;
	
	@RequestMapping("menuSearch")
	public String Search(@RequestParam(value = "searchCon")String searchCon, 
			@RequestParam(value = "page", defaultValue = "1")Integer page, Model model) {
		menuSearchService.menuSearch(searchCon, page, model);
		return "search/searchList";
	}
	@RequestMapping("selectSearch")
	public String SelectSearch(MenuCommand menuCommand,
			@RequestParam(value = "page", defaultValue = "1")Integer page, Model model) {
		selectSearchService.selectSearch(menuCommand, page, model);
		return "search/selectSearchList";
	}
}