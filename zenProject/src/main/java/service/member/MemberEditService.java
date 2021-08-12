package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberEditService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	public void memEdit(MemberCommand memberCommand, HttpSession session, Errors errors) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		if(bcryptPasswordEncoder.matches(memberCommand.getMemPw(), authInfo.getUserPw())) {
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setMemEmail(memberCommand.getMemEmail());
			memberDTO.setMemEmailChk(memberCommand.getMemEmailChk());
			memberDTO.setMemNick(memberCommand.getMemNick());
			memberDTO.setMemPhone(memberCommand.getMemPhone());
			memberDTO.setMemId(memId);
			memberRepository.memEdit(memberDTO);
		}else {
			errors.rejectValue("memPw", "notPw");
		}
	}
}
