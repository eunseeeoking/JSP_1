<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
	
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String gender = "";
	if(request.getParameter("gender").equals("남성")){
		gender = "남성";
	}else{
		gender = "여성";
	}
	out.println(id);
	out.println(pwd);
	out.println(name);
	
	stmt.executeUpdate("insert into tbl_member (userid,pwd,username,gender) values('"+id+"','"+pwd+"','"+name+"','"+gender+"')");
	%>
	
</body>
</html>