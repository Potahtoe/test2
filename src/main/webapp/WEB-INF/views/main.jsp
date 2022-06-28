<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
<div width="100%" height="auto">
	<div id="left" width="30%" height="auto" float="left">
		<%@include file="left.jsp" %>
	</div>
	<div id="center" width="30%" height="auto" float="center">
		<%@include file="center.jsp" %>
	</div>
	<input type="button" id="add" value="+" width="3%" height="30px">
	<div id="right" width="30%" height="auto" float="right">
		<%@include file="right.jsp" %>
	</div>
</div>
</body>
</html>