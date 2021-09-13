package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MenuCommand;

public class MenuModifyValidator implements Validator{
public boolean supports(Class<?> clazz) {
	// TODO Auto-generated method stub
	return false;
}
public void validate(Object target, Errors errors) {
	MenuCommand menuCommand = (MenuCommand)target;
//	if(menuCommand.getMenuImg()[0].getOriginalFilename()=="") {
//		errors.rejectValue("menuImg","required");
//	}
	ValidationUtils.rejectIfEmpty(errors, "menuRecipe", "required");
	ValidationUtils.rejectIfEmpty(errors, "menuMainItem", "selectRequired");
	ValidationUtils.rejectIfEmpty(errors, "menuName", "required");
	ValidationUtils.rejectIfEmpty(errors, "menuImg", "required");
	
	}
}