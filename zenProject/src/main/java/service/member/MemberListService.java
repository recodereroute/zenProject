package service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import repository.MemberRepository;

public class MemberListService {
	@Autowired
	MemberRepository memberRepository;
	public void memList(Model model) {
		MemberDTO dto = new MemberDTO();
		
		List<MemberDTO> list = memberRepository.memList();
		model.addAttribute("list",list);
		
	}
}
