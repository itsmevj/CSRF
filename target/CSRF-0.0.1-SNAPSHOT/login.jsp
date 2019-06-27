<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login User</title>
</head>
<link href="styling.css" rel="stylesheet" type="text/css">
<body>
<div class="center" align="center">
	<html:form action="/login" method="POST">
	<h1>Login</h1>
<br>
<br>
<br>
	<div class="row">
      <div class="col-25">
	<label for="uname"><b>Username :</b></label>
	</div> 
	<div class="col-75">
	<html:text property="userName" maxlength="10"/>
	</div>
</div>
<br>
<br>
<br>
<div class="row">
    <div class="col-25">
	<label for="password"><b>Password :</b></label>
	</div> 
	<div class="col-75">
	<html:text property="password" maxlength="20"/>
	</div>
</div> 
<br>
<br>
<br>
	<html:submit value="Login" />
	<html:reset value="Reset"/>
	</html:form>
</div>
</body>
</html>