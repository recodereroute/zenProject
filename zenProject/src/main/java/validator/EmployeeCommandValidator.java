package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.EmployeeCommand;

public class EmployeeCommandValidator implements Validator{
	public boolean supports(Class<?> clazz) {
		return false;
	}
	
	public void validate(Object target, Errors errors) {
		EmployeeCommand employeeCommand = (EmployeeCommand)target;
		if(employeeCommand.getEmpPw() != null && employeeCommand.getEmpPwCon() != null) {
			if(!employeeCommand.pwMatching()) {
				errors.rejectValue("empPwCon", "noMatch");
			}
		}
		ValidationUtils.rejectIfEmpty(errors, "empId", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPwCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "empName", "required");
		ValidationUtils.rejectIfEmpty(errors, "empHireDate", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPhone", "required");
		ValidationUtils.rejectIfEmpty(errors, "empEmail", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPost", "required");
		ValidationUtils.rejectIfEmpty(errors, "empAddr", "required");
		ValidationUtils.rejectIfEmpty(errors, "empDetailAddr", "required");
	}
}
