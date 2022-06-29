<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
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
	#add{
		display: flex;
		flex: 0.2;
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
	<div id="left">
		<jsp:include page="left.jsp" />
		<span id="list"></span>
		<script type="text/javascript">
			$("#list").text(list);
		</script>
	</div>
	<div id="center">
		<%@include file="center.jsp" %>
	</div>
	<div id="add">
		<input type="button" value="+" width="10px" height="30px">
	</div>
	<div id="right">
		<%@include file="right.jsp" %>
	</div>
</div>
</body>
</html>