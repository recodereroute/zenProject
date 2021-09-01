package service.search;

import java.util.ArrayList;
import java.util.HashSet;
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
//		List<List<MenuDTO>> list = new ArrayList<List<MenuDTO>>();
//		HashSet<MenuDTO> set = new HashSet<MenuDTO>();
		
		List<MenuDTO> list = new ArrayList<MenuDTO>();
		List<String> forComparison = new ArrayList<String>();
		String[] items = menuCommand.getMenuItems();
		// 중복된 이름을 가진 메뉴가 들어오지 않게 하기 위한 과정.
		// 이름과 작성자를 
		for(String item : items) {
			List<MenuDTO> col = searchRepository.selectSearch(item);
			if(!col.isEmpty()) {
				for(MenuDTO detail : col) {
					if(!forComparison.contains(detail.getMenuName() + detail.getEmpNo()) ) {
						forComparison.add(detail.getMenuName()+detail.getEmpNo());
						list.add(detail);
					}
				}
			}
		}
		model.addAttribute("searchResult", list);
	}
}
