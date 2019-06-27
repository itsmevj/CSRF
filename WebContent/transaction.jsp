<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Example</title>
</head>
<link href="styling.css" rel="stylesheet" type="text/css">
<body>
<div class="center" align="center">
	<html:form action="/transfer" method="POST">
	<h5>Login Successful !</h5>
	<br>
	<br>
	<h1>Money Transfer</h1>
<br>
<br>
<br>
	<div class="row">
      <div class="col-25">
	<label for="anum"><b>Account Number :</b></label>
	</div> 
	<div class="col-75">
	<html:text property="accountNumber" maxlength="15"/>
	</div>
</div>
<br>
<br>
<br>
<div class="row">
    <div class="col-25">
	<label for="ahname"><b>Account Holder Name :</b></label>
	</div> 
	<div class="col-75">
	<html:text property="accountHolderName" maxlength="20"/>
	</div>
</div> 
<br>
<br>
<br>
	<div class="row">
	<div class="col-25">
	<label for="amt"><b>Amount :</b></label>
	</div>
	<div class="col-75">
	<html:text property="amount" maxlength="7"/>
	</div>
</div>
<br>
<br>
<br>
	<html:submit value="Transfer" />
	<html:reset value="Reset"/>
	</html:form>
</div>
</body>
</html>