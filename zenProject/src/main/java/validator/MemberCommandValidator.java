package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberCommandValidator implements Validator{
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public void validate(Object target, Errors errors) {
		MemberCommand memberCommand = (MemberCommand)target;
		if(memberCommand.getMemPw() != null && memberCommand.getMemPwCon() != null) {
			if(!memberCommand.pwMatching()) {
				errors.rejectValue("memPwCon", "noMatch");
			}
		}
			ValidationUtils.rejectIfEmpty(errors, "memId", "required");
			ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
			ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
			ValidationUtils.rejectIfEmpty(errors, "memName", "required");
			ValidationUtils.rejectIfEmpty(errors, "memNick", "required");
			ValidationUtils.rejectIfEmpty(errors, "memEmail", "required");
			ValidationUtils.rejectIfEmpty(errors, "memEmailChk", "required");
	}

}
