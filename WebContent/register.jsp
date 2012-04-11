<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<sx:head />
<script type="text/javascript">
	function validateForm() {
		var username = document.forms["registerForm"]["userBean.username"].value;
		var password = document.forms["registerForm"]["userBean.password"].value;
		var cpassword = document.forms["registerForm"]["cpassword"].value;
		var fName = document.forms["registerForm"]["userBean.fName"].value;
		var lName = document.forms["registerForm"]["userBean.lName"].value;
 		<!-- var gender = document.forms["registerForm"]["userBean.gender"].value;-->
 		var dob = document.forms["registerForm"]["userBean.dob"].value;
		var city = document.forms["registerForm"]["userBean.city"].value;
		var state = document.forms["registerForm"]["userBean.state"].value;
		var country = document.forms["registerForm"]["userBean.country"].value;
		var pincode = document.forms["registerForm"]["userBean.pincode"].value;
		var address = document.forms["registerForm"]["userBean.address"].value;
		var emailId = document.forms["registerForm"]["userBean.emailId"].value;
		var phone = document.forms["registerForm"]["userBean.phone"].value;
		var question = document.forms["registerForm"]["userBean.question"].value;
		var secretAnswer = document.forms["registerForm"]["userBean.secretAnswer"].value;
		
		
		if (username == null || username == "") {
			document.getElementById("errmsg").innerHTML = "username required!";
			return false;
		} else if (password == null || password == "") {
			document.getElementById("errmsg").innerHTML = "password required!";
			return false;
		} else if (cpassword == null || cpassword == "") {
			document.getElementById("errmsg").innerHTML = "confirmation password required!";
			return false;
		} else if (fName == null || fName == "") {
			document.getElementById("errmsg").innerHTML = "Firstname required!";
			return false;
		} else if (lName == null || lName == "") {
			document.getElementById("errmsg").innerHTML = "Lastname required!";
			return false;
		} else if (document.forms["registerForm"]["userBean.gender"].checked == false) {
			document.getElementById("errmsg").innerHTML = "Gender required!";
			return false;
		} else if (dob == null || dob == "") {
			document.getElementById("errmsg").innerHTML = "Date of birth required!";
			return false;
		} else if (city == null || city == "") {
			document.getElementById("errmsg").innerHTML = "City required!";
			return false;
		} else if (state == null || state == "") {
			document.getElementById("errmsg").innerHTML = "State required!";
			return false;
		} else if (country == null || country == "") {
			document.getElementById("errmsg").innerHTML = "Country required!";
			return false;
		} else if (pincode == null || pincode == "") {
			document.getElementById("errmsg").innerHTML = "pincode required!";
			return false;
		} else if (address == null || address == "") {
			document.getElementById("errmsg").innerHTML = "address required!";
			return false;
		} else if (emailId == null || emailId == "") {
			document.getElementById("errmsg").innerHTML = "Email i.d required!";
			return false;
		} else if (phone == null || phone == "") {
			document.getElementById("errmsg").innerHTML = "Phone number required!";
			return false;
		} else if (question == null || question == "") {
			document.getElementById("errmsg").innerHTML = "Secret Question required!";
			return false;
		} else if (secretAnswer == null || secretAnswer == "") {
			document.getElementById("errmsg").innerHTML = "Secret answer is required!";
			return false;
		} 
		
		if(document.forms["registerForm"]["userBean.pincode"].value!="")
		{
			if(document.forms["registerForm"]["userBean.pincode"].value.length!=6)
			{
				document.getElementById("errmsg").innerHTML = "Please enter zip code of 6 digit!";
				return false;
			}
			else if(isNaN(document.forms["registerForm"]["userBean.pincode"].value))
			{
				document.getElementById("errmsg").innerHTML = "Please enter valid digit 0-9 for pincode";
				return false;
			}
		}
		
		if(isNaN(document.forms["registerForm"]["userBean.phone"].value))
		{
			document.getElementById("errmsg").innerHTML = "Please enter valid digits 0-9 for phonenumber";
			return false;
		}
		
		var atpos=emailId.indexOf("@");
		var dotpos=emailId.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=emailId.length)
		{
		  document.getElementById("errmsg").innerHTML = "Not a valid email i.d";
		  return false;
		}
			
		return true;
	}
</script>
</head>
<body>

<s:form name="registerForm" action="RegisterSubmit"
		method="post" onsubmit="return validateForm()" enctype="multipart/form-data">
		<s:actionerror />
		<s:fielderror/>
		<p id="errmsg"></p>
		SELECT YOUR USERNAME & PASSWORD:
		<s:textfield label="username" name="userBean.username" size="30" required="true"/>
		<s:password label="password" name="userBean.password" size="30" />
		<s:password label="confirm password" name="cpassword" size="30" />

		ENTER YOUR DETAILS:		
		<s:textfield label="First Name" name="userBean.fName" size="30" />
		<s:textfield label="Last Name" name="userBean.lName" size="30" />
		<s:radio list="{'male','female'}" label="Gender"
			name="userBean.gender"></s:radio>
		<sx:datetimepicker name="userBean.dob"
			label="Date of Birth Format(dd-MMM-yyyy)" displayFormat="dd-MMM-yyyy"
			value="%{'1990-01-01'}" />
		<s:textarea label="address" name="userBean.address"  />
		
		<%-- <s:select label="City" list="cities"
			name="user.city"></s:select>
		<s:select label="State" list="states"
			name="user.state"></s:select>
		<s:select label="Country" list="countries"
			name="user.country"></s:select>
		 --%>
		 
		<s:textfield label="City" name="userBean.city" size="20" />
		<s:textfield label="State" name="userBean.state" size="20" />
		<s:textfield label="Country" name="userBean.country" size="20" />
		<s:textfield label="pincode" name="userBean.pincode" size="20" />
		<s:textfield label="email" name="userBean.emailId" size="30" />
		<s:textfield label="phone" name="userBean.phone" size="20" />
		<s:select label="Select a secret question" list="questions"
			name="userBean.question"></s:select>
		<s:textfield label="answer" name="userBean.secretAnswer" size="20" />
		<s:submit method="execute" label="Submit" align="center" />
		
</s:form>
</body>
</html>