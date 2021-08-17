package service.column;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import repository.ColumnRepository;


public class ColumnListService {
	@Autowired
	ColumnRepository columnRepository;
	public void columnList(Model model,Integer page) {
		 NoticeDTO dto= new NoticeDTO();
		List<NoticeDTO> list=columnRepository.columnList(dto);
		 model.addAttribute("lists",list);
	}
}
