package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.EmployeesDTO;
import repository.EmployeeRepository;

public class EmployeePwConfirmService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public String checkPw(String empPw, HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		EmployeesDTO dto = employeeRepository.empInfo(authInfo.getGrade());
		if(bCryptPasswordEncoder.matches(empPw, dto.getEmpPw())) {
			return "employee/empPwEditOk";
		}else {
			model.addAttribute("pwFail","비밀번호가 틀립니다.");
			return "employee/empPwChk";
		}
	}
}
