package com.locomate.java.validations;
import org.owasp.esapi.ESAPI;
import org.owasp.esapi.StringUtilities;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.owasp.esapi.Validator;

import com.locomate.java.beans.RegistrationPO;
public abstract class LoginPOValidator implements Validator  {
	public boolean supports(Class<?> clazz) {
		return RegistrationPO.class.isAssignableFrom(clazz);
}
	
	
	public void validate(Object target, Errors errors) {
		RegistrationPO register= (RegistrationPO) target;
		verifyUserName (errors,register );
		verifySearchStudentIdName(errors, register);
	}


	private void verifyUserName(Errors errors, RegistrationPO register) {
		if(!StringUtilities.isEmpty(register.getUserName()) && !ESAPI.validator().isValidInput("Agent Alias", register.getUserName(), "alphaNumeric",12, true)) {
			errors.rejectValue("aliasTextField","locomate.ValidateText");
		}
		
	}


	private void verifySearchStudentIdName(Errors errors,
			RegistrationPO register) {
		// TODO Auto-generated method stub
		
	}



}
