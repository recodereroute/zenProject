package service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.NoticeRepository;

public class NoticeListService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeList(Integer page,Model model) {
		NoticeDTO dto= new NoticeDTO();
		
		int limit = 3;//
		int limitPage = 10; 
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		List<NoticeDTO> list = noticeRepository.noticeList(dto);
		int count =noticeRepository.count();
		model.addAttribute("noticeList", list);
		model.addAttribute("count", count);
		if(page!=null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "noticeList");}
		}
	}

