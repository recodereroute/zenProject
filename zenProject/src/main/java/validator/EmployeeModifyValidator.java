package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.EmployeeCommand;

public class EmployeeModifyValidator implements Validator {
	public boolean supports(Class<?> clazz) {
		return false;
	}
	public void validate(Object target, Errors errors) {
		EmployeeCommand employeeCommand = (EmployeeCommand)target;
		
		ValidationUtils.rejectIfEmpty(errors, "empPhone", "required");
		ValidationUtils.rejectIfEmpty(errors, "empEmail", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPost", "required");
		ValidationUtils.rejectIfEmpty(errors, "empAddr", "required");
		ValidationUtils.rejectIfEmpty(errors, "empDetailAddr", "required");
	}
}
