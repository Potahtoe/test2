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
	   list-style: none;
	}
	input{
	   border: none;
	}
	#alert{
		position: absolute;
		width: 100%;
		height: 100%;
		background: rgba(0,0,0,0.8);
		top: 0;
		left: 0;
		display: none;
	}
	#alert_content{
		position: absolute;
		width: 40%;
		height: 30%;
		top: 35%;
		left: 30%;
		background: white;
		align-items: center;
	}
	#alert_list{
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 20px;
	}
	#alert_confirm{
		display: flex;
		align-items: center;
		justify-content: center;
	}
	
</style>
<script type="text/javascript">
	function leftTitle(i) {
		$('#center_bottom').empty();
		$('#center_top').html("<input type='checkbox' id='allChk' name='allChk' onclick='allChk()'>전체선택");
		for(j=1; j<=4; j++) {
			$('#center_bottom').append("<input type='checkbox' name='chk' value='" + i + "-" + j + "'>" + i + "-" + j + "<br>");
		}
	} 
	function allChk() {
		if($('input[name=allChk]').prop('checked')) {
			$('input[name=chk]').prop('checked',true);
		}else{
		$('input[name=chk]').prop('checked',false);
		}
	
		$('input[name=chk]').click(function() {
			var totalChk = $('input[name=chk]').length;
			var checked = $('input[name=chk]:checked').length;
			if(totalChk>checked){
				$('input[name=allChk]').prop('checked',false);
			}else{
				$('input[name=allChk]').prop('checked',true);
			}
		});
	}
	
	var chkList = [];
	var finalList = [];
	function plus() {
		$('#center_bottom input[name=chk]').each(function(){
			list=$(this).val();
			if($(this).is(':checked')){
				chkList.push('<div>' + list + '</div>');
			}
		});
		$('#right_top').html(chkList);
	}
	
	function confirm() {
		var str = "";
		for(var i=0; i<$('#right_top').find('div').length; i++) {
			str += $('#right_top').find('div').eq(i).html() +'<br>';
		}
		console.log('str' + str);
		$('#alert').fadeIn();
		$('#alert_list').html(str);
	}
	
	function arConfirm() {
		$('#alert').fadeOut();
	}
</script>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
   <div class="main">
      <div id="left">
         <ul id="left_ul">
            <c:forEach var="i" begin="1" end="4" step="1">
               <li><input type="text" value="${i}" onclick="leftTitle(${i});"></li>
            </c:forEach>
         </ul>
      </div>
      <div id="center">
         <div id="center_top">
         </div>
         <div id="center_bottom">
         </div>
      </div>
      <div id="plus">
         <input type="button" value="+" onclick="plus();">
      </div>
      <div id="right">
         <div id="right_top">
         </div>
         <div id="right_bottom">
            <input type="button" value="확인" onclick="confirm();">
         </div>
      </div>
      <div id="alert">
      	<div id="alert_content">
      		<div id="alert_list">
      		</div>
	      	<div id="alert_confirm">
	      		<input type="button" value="확인" onclick="arConfirm();">
	      	</div>
      	</div>
      </div>
   </div>
</body>
</html>