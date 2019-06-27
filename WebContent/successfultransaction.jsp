<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.example.CSRF.form.*" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successful Transaction</title>
</head>
<link href="styling.css" rel="stylesheet" type="text/css">
<body>
<div class="center" align="center">
	<html:form action="/transfer" method="POST">
<h2><bean:write name="transactionForm" property="amount" /> has been successfully transfered to <bean:write name="transactionForm" property="accountHolderName" /></h2>
<h1>You have been logged out !</h1>
<h2>Please close the window !</h2>
	</html:form>
</div>
</body>
</html>