package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import repository.MemberRepository;

public class MemberOutService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	public String memOut(String memPw, HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		if (bcryptPasswordEncoder.matches(memPw, authInfo.getUserPw())) {
			memberRepository.memOut(authInfo.getUserId());
			return "redirect:/login/logOut";
		} else {
			model.addAttribute("pwFail", "비밀번호가 틀립니다.");
			return "member/memFinalChk";
		}
	}
}