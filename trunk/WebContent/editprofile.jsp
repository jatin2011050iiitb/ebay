<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Profile!</h1>

<s:form name="submitProfileEdit" action="submitProfileEdit.action"  method="post">
	<s:textfield label="First Name"  name="firstname"  value="%{userBean.getFName()}"  size="30" />
	<s:textfield label="LastName:"  name="lastname"  value="%{userBean.getLName()}"   size="30" />
	<s:textfield label="Gender:"  name="yourgender"  value="%{userBean.getGender()}"  disabled="true" size="30" />
	<%-- <s:textfield label="Date Of Birth:"  name="dateofbirth"  value="%{userBean.getDob()}"  disabled="true" size="30" /> --%>
	<s:textfield label="Address:"  name="address"  value="%{userBean.getAddress()}"   size="30" />
	<s:textfield label="City:"  name="city"  value="%{userBean.getCity()}"   size="30" />
	<s:textfield label="State:"  name="state"  value="%{userBean.getState()}"   size="30" />
	<s:textfield label="Country:"  name="country"  value="%{userBean.getCountry()}"   size="30" />
	<s:textfield label="Pin Code:"  name="pincode"  value="%{userBean.getPincode()}"   size="30" />
	<s:textfield label="Email Id:"  name="emailid"  value="%{userBean.getEmailId()}"  size="30" />

	<s:submit method="submitProfileEditMethod" label="Submit"/>
</s:form>

</body>
</html>