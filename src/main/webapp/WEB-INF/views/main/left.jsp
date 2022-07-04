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
	<div id="left">
		<ul>
			<c:forEach var="dto" items="${list}">
				<li id="list">${dto.a_list}</li>
			</c:forEach>
		</ul>
	</div>
	<input type="hidden" name="list" value="${list}">
</body>
</html>