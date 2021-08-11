package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.member.MemberDetailService;

@Controller
@RequestMapping("edit")
public class MemberMyPageController {
	@Autowired
	MemberDetailService memberDetailService;
	
	@RequestMapping("myPage")
	public String myPage() {
		return "member/memMyPage";
	}
	@RequestMapping("memDetail")
	public String memDetail(HttpSession session, Model model){
		memberDetailService.memDetail(model, session);
		return "member/memDetail";
	}

}
