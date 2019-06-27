package com.example.CSRF.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.example.CSRF.form.TransactionForm;
public class TransactionAction extends Action {
	private static final Logger logger = Logger.getLogger(TransactionAction.class);
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TransactionForm transactionForm = (TransactionForm) form;
		if(transactionForm.getAccountNumber()== ""||transactionForm.getAccountHolderName()== ""||transactionForm.getAmount()=="")
		{
			logger.info("please fill the details");
			return mapping.findForward("fail");
		}
		else //if(isTokenValid(request))
		{
			//resetToken(request);
			logger.info("Amount ");
			logger.info(transactionForm.getAmount());
			logger.info("has been transferred to : ");
			logger.info(transactionForm.getAccountHolderName());
			return mapping.findForward("success");
		}
		/*else
			resetToken(request);
			logger.info("Token validation failed ");
			return mapping.findForward("failure");*/
		}
	
}