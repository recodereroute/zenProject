package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.member.MemberListService;

@Controller
public class MemberController {
	@Autowired
	MemberListService memberListService;
	
	@RequestMapping("memList")
	public String memList(Model model) {
		memberListService.memList(model);
		return "member/memList";
	}
}
