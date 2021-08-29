package service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.MemberRepository;

public class MemberListService {
	@Autowired
	MemberRepository memberRepository;
	public void memList(Model model, Integer page) {
		MemberDTO dto = new MemberDTO();
		int limit = 5;
		int limitPage = 10;
		if(page != null) {
			Long startRow = ((long)page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		List<MemberDTO> list = memberRepository.memList(dto);
		int count = memberRepository.count();
		model.addAttribute("memList",list);
		if(page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "memList");
		}
	}
}
