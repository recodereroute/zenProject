package controller.board;

import org.springframework.ui.Model;

public class PageAction {
	public void page(int count , int limit , int page, int limitPage,
			Model model,String pageUrl) {
		int maxPage = (int)((double) count / limit + 0.99);
		int startPage = (int)((double) page / limitPage + 0.99); 
		int endPage = startPage + limitPage - 1;
		if(endPage > maxPage)endPage = maxPage;
		
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("page", page);
		model.addAttribute("pageUrl", pageUrl);
	}
}