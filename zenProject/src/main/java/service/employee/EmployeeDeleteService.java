package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.AuthInfoDTO;
import repository.EmployeeRepository;

public class EmployeeDeleteService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public String empDelete(String empNo, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String nowId = authInfo.getGrade();
		employeeRepository.empDelete(empNo);
		//본인이 탈퇴한 경우 세션이 만료되어 로그아웃 돼야하고
		//남을 탈퇴시킨 경우는 리스트로 가서 삭제되었는지 확인하면 된다.
		if(empNo.equals(nowId)) {
			return "redirect:/login/logOut";
		}else {
			return "redirect:empList";
		}
	}
}
