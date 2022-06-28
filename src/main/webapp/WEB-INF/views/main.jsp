<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#main{
		display: flex;
	}
	#left{
		display: flex;
		flex: 1;
		align-items: left;
	}
	#center{
		display: flex;
		flex: 1;
		align-items: center;
	}
	#right{
		display: flex;
		flex: 1;
		align-items: right;
	}
	
</style>
<title>Main</title>
</head>
<body>
<div id="main">
	<div id="left" >
		<%@include file="left.jsp" %>
	</div>
	<div id="center">
		<%@include file="center.jsp" %>
	</div>
	<input type="button" id="add" value="+" width="10px" height="30px">
	<div id="right">
		<%@include file="right.jsp" %>
	</div>
</div>
</body>
</html>