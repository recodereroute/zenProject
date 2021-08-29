package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.member.MemberDeleteService;
import service.member.MemberInfoService;
import service.member.MemberListService;

@Controller
public class MemberController {
	@Autowired
	MemberListService memberListService;
	@Autowired
	MemberInfoService memberInfoService;
	@Autowired
	MemberDeleteService memberDeleteService;
	
	@RequestMapping("memList")
	public String memList(@RequestParam(value="page", defaultValue="1")Integer page, 
							Model model) {
		memberListService.memList(model, page);
		return "member/memList";
	}
	@RequestMapping(value = "memInfo", method = RequestMethod.POST)
	public String memInfo(@RequestParam(value = "memId")String memId, Model model) {
		memberInfoService.memInfo(memId, model);
		return "member/memInfo";
	}
	@RequestMapping("memDelete")
	public String memDelete(@RequestParam(value = "memId")String memId) {
		memberDeleteService.memDelete(memId);
		return "redirect:memList";
	}
}
