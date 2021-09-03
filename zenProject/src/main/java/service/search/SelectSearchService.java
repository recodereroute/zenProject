package service.search;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuDTO;
import command.MenuCommand;
import controller.board.PageAction;
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
		// 정렬을 해줘야 하는 경우만
		if (list.size() > 1) {
			list = quickSort(list, 0, list.size()-1);
		}
		
		
		// 리스트의 사이즈 이용해서 페이징 해줄수 있을거 같음.
		System.out.println("리스트의 사이즈 : " + list.size());
		model.addAttribute("searchResult", list);


	}
	
	public List<MenuDTO> quickSort(List<MenuDTO> list, int l, int r) {
		int left = l;
		int right = r;
		// 중앙의 조회수
		int pivot = list.get((left + right) / 2).getMenuCnt();
		do {
			while(list.get(left).getMenuCnt() > pivot) left++;
			while(list.get(right).getMenuCnt() < pivot) right--;
			if (left <= right) {
				MenuDTO tmp = list.get(left);
				list.set(left, list.get(right));
				list.set(right, tmp);
				left++;
				right--;
			}
		}while(left <= right);
		if(l < right) quickSort(list, l, right);
        if(r > left) quickSort(list, left, r);

		return list;
	}
}
