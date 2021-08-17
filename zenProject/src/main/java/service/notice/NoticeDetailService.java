package service.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeDetailService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeDetail(String noticeNo, Model model) {
		noticeRepository.noticeCount(noticeNo);
		NoticeDTO dto = noticeRepository.noticeDetail(noticeNo);
		model.addAttribute("dto", dto);
	}
	public void noticeInfo(String noticeNo, Model model) {
		NoticeDTO dto = noticeRepository.noticeDetail(noticeNo);
		model.addAttribute("dto", dto);
	}
}
