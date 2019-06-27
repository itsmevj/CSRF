package com.example.CSRF.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.example.CSRF.form.LoginForm;

public class LoginAction extends Action {
	private static final Logger logger = Logger.getLogger(TransactionAction.class);
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		LoginForm loginForm = (LoginForm) form;

		if (loginForm.getUserName() == null || loginForm.getPassword() == null
				|| !loginForm.getUserName().equalsIgnoreCase("Vinay")
				|| !loginForm.getPassword().equals("password")) {
			logger.info("please enter the valid credentials");
			return mapping.findForward("loginfailure");
		} else
			//saveToken(request);
			logger.info("User");
		   logger.info(loginForm.getUserName());
		   logger.info("Logged in successfully");
			return mapping.findForward("loginsuccess");
	}

}
