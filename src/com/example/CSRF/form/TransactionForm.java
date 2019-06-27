package com.example.CSRF.form;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
public class TransactionForm extends ActionForm {
	private static final long serialVersionUID = 1L;
	private String accountNumber = null;
	private String accountHolderName = null;
	private String amount = null;
	
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getAccountHolderName() {
		return accountHolderName;
	}
	public void setAccountHolderName(String accountHolderName) {
		this.accountHolderName = accountHolderName;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.accountNumber = null;
		this.accountHolderName = null;
		this.amount = null;
	}
}
