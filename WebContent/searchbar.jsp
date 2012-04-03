<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="gh-cl"></div>


	<form id="headerSearch" name="headerSearch"
		action="searchItem.action" method="get">
		<div class="gh-sbox">
			<div class="gh-fl">
				<input type="text" class="gh-tb" size="60" maxlength="300" value=""
					id="_nkw" name="searchString" autocomplete="OFF">
				<s:select class="gh-sb" size="1" id="_sacat" name="categoryIdSelected"
					list="categoryList" listKey="categoryId" listValue="categoryDesc" headerKey="0" headerValue="All Categories" >
				</s:select>
				<a class="gh-ss"><input type="submit" class="gh-btn"
					id="ghSearch" value="Search"> </a>
			</div>
			<div class="gh-fl gh-as"></div>
			<div class="gh-clr"></div>

			

		</div>
	</form>

</body>
</html>