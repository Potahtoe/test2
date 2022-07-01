<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
ul{
	list-style:none;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<c:forEach var="i" begin="1" end="4" step="1">
			<li><a href="center.do?i=${i}">${i}</a></li>
		</c:forEach>
	</ul>
	<input type="hidden" name="i" value="${i}">
</body>
</html>