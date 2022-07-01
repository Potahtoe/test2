<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
div.main {
	display: grid;
	grid-template-columns: 30% 30% 5% 30%;
	grid-template-rows: 100%;
	column-gap: 10px;
}
div.left, .center, .right{
	border: 1px solid black;
}
#plus{
	align-items: center;
}
</style>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<div class="main">
		<div class="left">
			<jsp:include page="left.jsp" />
		</div>
		<div class="center">
			<jsp:include page="center.jsp" />
		</div>
		<div class="plus">
			<input type="button" id="plus" value="+">
		</div>
		<div class="right">
			<jsp:include page="right.jsp" />
		</div>
	</div>
</body>
</html>