<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	var list ="${dto.a_list}";
</script>
<title>Left</title>
</head>
<body>
<h1>left</h1>
	<table>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.a_list}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>