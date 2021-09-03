package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;



public class MenuFormValidator implements Validator {
public boolean supports(Class<?> clazz) {
	return false;
}
public void validate(Object target, Errors errors) {
	// TODO Auto-generated method stub
ValidationUtils.rejectIfEmpty(errors, "menuRecipe", "required");
ValidationUtils.rejectIfEmpty(errors, "menuMainItem", "selectRequired");
ValidationUtils.rejectIfEmpty(errors, "menuName", "required");

}

}
