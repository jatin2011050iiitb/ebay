<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignIn</title>
<style>
.errorMessage {
color: red;
font-size: 0.8em;
} 

.label {
color:#000000;
}
</style>
</head>
<body>
<h4>Welcome to eBay - Sign in</h4>

<s:form name="login_form" method="POST" action="loginAction">             
           	<s:textfield name="username" label ="User Id" id="username_id"  />           
   			<s:password name="password"  label="Password" id="password_id" />
   			<s:actionerror /> 
			<img src="Captcha.jpg" border="0">
			<s:textfield label="Code" name="j_captcha_response" size="20" maxlength="10"/>
      		<s:submit name="signin" id="signin_id" value="SignIn" align= "center"/><br>
      	</s:form>

</body>
</html>