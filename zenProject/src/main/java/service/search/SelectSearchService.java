package service.search;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import command.MenuCommand;
import repository.SearchRepository;

public class SelectSearchService {
	@Autowired
	SearchRepository searchRepository;
	public void selectSearch(MenuCommand menuCommand, Integer page, Model model) {
		List<List<MenuDTO>> list = new ArrayList<List<MenuDTO>>();
		String[] items = menuCommand.getMenuItems();
		
		for(String item : items) {
			List<MenuDTO> col = searchRepository.selectSearch(item);
			list.add(col);
		}
		model.addAttribute("searchResult", list);
	}
}
