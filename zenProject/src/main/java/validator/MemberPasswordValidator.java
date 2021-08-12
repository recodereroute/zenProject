package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberPasswordValidator implements Validator{
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public void validate(Object target, Errors errors) {
		MemberCommand command = (MemberCommand) target;
		ValidationUtils.rejectIfEmpty(errors, "oldPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
		if(!command.getMemPw().isEmpty()) {
			if(!command.pwMatching()) {
				errors.rejectValue("memPwCon", "noMatch");
			}
		}
	}
}
