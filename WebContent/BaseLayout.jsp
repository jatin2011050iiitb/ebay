<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<!--<link href="style.css" type="text/css" rel="stylesheet">-->
</head>
<body>
<div align="center">
	<div id="container" style="width: 1024px;">

		<div id="header" style="background-color: #F8F8FF; text-align: left; height: 55px;">
			<tiles:insertAttribute name="header" />
		</div>
		
		<div id="searchbar" >
			<tiles:insertAttribute name="searchbar" />
		</div>
		
		<div id="navigationbar" >
			<tiles:insertAttribute name="navigationbar" />
		</div>
		
		<div id="body" style="background-color:#F0FFF0; height: 500px;">
			<tiles:insertAttribute name="body" />
		</div>
		<div id="footer" style="background-color: #FFFFF0; height: 56px;">
			<tiles:insertAttribute name="footer" />
		</div>
		
	</div>
</div>
</body>
</html>