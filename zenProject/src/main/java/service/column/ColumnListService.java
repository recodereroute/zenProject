package service.column;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.ColumnRepository;


public class ColumnListService {
	@Autowired
	ColumnRepository columnRepository;
	public void columnList(Model model,Integer page) {
		NoticeDTO dto= new NoticeDTO();
		int limit = 3;
		int limitPage = 10;
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		List<NoticeDTO> list=columnRepository.columnList(dto);
		int count = columnRepository.count();
		model.addAttribute("columnLists",list);
		if (page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "columnList");
		}
	}
}
