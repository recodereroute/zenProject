package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import repository.EmployeeRepository;

public class EmployeeOutService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public String empOut(String empPw, HttpSession session, Model model) {
		AuthInfoDTO authInnfo = (AuthInfoDTO)session.getAttribute("authInfo");
		if(bcryptPasswordEncoder.matches(empPw,authInnfo.getUserPw())) {
			employeeRepository.empOut(authInnfo.getGrade());
			return "redirect:/login/logOut";
		}else {
			model.addAttribute("pwFail", "비밀번호가 다릅니다.");
			return "employee/empFinalChk";
		}
	}
}
