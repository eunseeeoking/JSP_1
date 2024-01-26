<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.box {
	width: 300px;
	height: 300px;
	border: 1px solid red;
	background-color: #ccc;
	position: abs;
	margin: 0 auto;
}

.box div {
	line-height: 50px;
}

.box input {
	line-height: 50px;
}
</style>
</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<form name="Login" action="fomr_view2.jsp" method="post">
		<div class="box">
			<div style="color: blue">
				아이디 : <input type="text" name="id">
			</div>
			<div style="color: blue">
				패스워드 : <input type="password" name="pwd">
			</div>
			<div>	
				<input type="button" onclick="check()" value="로그인">
			</div>
		</div>
	</form>

</body>
</html>

<script>
	function check() {
		var Login = document.Login;
		 if(Login.id.value == ""){
			alert("아이디를 입력하세요~~");
			Login.id.focus();
			return;
			
		}
		
		
		
		if(Login.pwd.value == ""){
			alert("비밀번호를 입력하세요~~");
			return;
		} 
		
		if(Login.id.value == "test" && Login.pwd.value =="1234"){
			alert("로그인 성공");
			Login.submit();
		}
		 else if(Login.id.value != "test" || Login.pwd.value !="1234"){
			alert("아이디 패스워드를 확인하세요");
			Login.submit();
		} 
	}
</script>