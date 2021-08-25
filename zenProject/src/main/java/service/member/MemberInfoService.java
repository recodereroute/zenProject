package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import repository.MemberRepository;

public class MemberInfoService {
	@Autowired
	MemberRepository memberRepository;
	public void memInfo(String memId, Model model) {
		MemberDTO dto = memberRepository.memInfo(memId);
		model.addAttribute("memberCommand",dto);
	}
}
