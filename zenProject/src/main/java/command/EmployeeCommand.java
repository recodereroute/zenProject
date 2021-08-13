package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EmployeeCommand {
	String empNo;
	String empId;
	String empPw;
	String empPwCon;
	String empName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date empHireDate;
	String empJob;
	String empPhone;
	String empOfficeNum;
	String empEmail;
	String empPost;
	String empAddr;
	String empDetailAddr;
	
	String oldPw;
	public boolean pwMatching() {
		return empPw.equals(empPwCon);
	}
}
