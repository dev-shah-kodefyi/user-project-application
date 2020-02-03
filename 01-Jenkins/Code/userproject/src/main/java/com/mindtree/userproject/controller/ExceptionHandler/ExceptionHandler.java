package com.mindtree.userproject.controller.ExceptionHandler;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;

import com.mindtree.userproject.exceptions.serviceexception.UserIdNotFoundException;

@ControllerAdvice//(assignableTypes = {UserProjectController.class})
public class ExceptionHandler {
	@org.springframework.web.bind.annotation.ExceptionHandler//(value = (UserIdNotFoundException.class))
	
	public String ControllerExceptionHandler(UserIdNotFoundException c, Model model) {
		Map<String, Object> error = new HashMap<String, Object>();
		error.put("timestamp", new Date());
		error.put("httpstatus", HttpStatus.BAD_REQUEST.value());
		error.put("message", c.getMessage());
		error.put("body", null);
		model.addAttribute("error", error);
		return "errorPage";
	}
}
