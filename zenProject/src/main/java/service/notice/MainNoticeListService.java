package service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import repository.NoticeRepository;

public class MainNoticeListService {
@Autowired
NoticeRepository noticeRepository;
	
	public void mainNoticeList(Model model)
	{
		List<NoticeDTO> list =noticeRepository.mainNoticeList();
		
		model.addAttribute("mainNoticeList",list);
	}
}
