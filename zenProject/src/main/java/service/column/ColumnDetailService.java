package service.column;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import repository.ColumnRepository;

public class ColumnDetailService {
@Autowired
ColumnRepository columnRepository;
	public void columnDetail(String noticeNo ,Model model) {
		columnRepository.columnReadUpdate(noticeNo);
		NoticeDTO dto= columnRepository.columnDetail(noticeNo);
		model.addAttribute("dto",dto);
	}
	public void columnUpdate(String noticeNo, Model model) {
		NoticeDTO dto= columnRepository.columnDetail(noticeNo);
		model.addAttribute("dto",dto);
	}
}
