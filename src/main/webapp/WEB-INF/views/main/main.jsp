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
#left, #center, #right{
	border: 1px solid black;
}
#plus{
	align-items: center;
}
ul{
	list-style:none;
}
</style>
<script type="text/javascript">
	$(function(){
		$('#title').click(function(){
			var i =$('#title').val();
			console.log('i',i);
			$('#center').html("<ul><li><foreach var='i' items='${i}'><foreach var='j' begin='1' end='4' step='1'>${i}-${j}</foreach></foreach></li></ul>");
		});
	});
</script>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<div class="main">
		<div id="left">
			<ul>
				<c:forEach var="i" begin="1" end="4" step="1">
					<li id="title">${i}</li>
				</c:forEach>
			</ul>
		</div>
		<div id="center">
		</div>
		<div id="plus">
			<input type="button" id="plus" value="+">
		</div>
		<div id="right">
		</div>
	</div>
</body>
</html>