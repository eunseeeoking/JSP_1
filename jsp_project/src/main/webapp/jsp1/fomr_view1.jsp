<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.login{
		color : red;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("test") && pwd.equals("1234")){
			
		%>
		
			<div class='login'><h1>로그인 성공 </h1></div>
			
		<%
		}else {
			%>
			<div class="login"><h1>로그인 실패</h1></div>
		<%}
		%>
<%-- <div>아이디 : <%= 

request.getParameter("id") %> </div>
<div>패스워드 : <%= request.getParameter("pwd") %> </div> --%>



</body>
</html>