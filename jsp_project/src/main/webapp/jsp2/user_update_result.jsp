<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>

<%	
	String id = request.getParameter("id");
	
	
	 
	String name = request.getParameter("name");
	String[] hobby = {};
	if(request.getParameterValues("hobby") != null){
		hobby = request.getParameterValues("hobby");
	}
	String gender = "";
	if(request.getParameter("gender").equals("남성")){
		gender = "남성";
	}else {
		gender ="여성";}
	
	String pwd = request.getParameter("pwd");
	
	
	String pwdStr ="";
	if(pwd != null && !pwd.equals("")){
		pwdStr = "PWD = '"+pwd +"',";	
	}
	
	
	
	
	 stmt.executeUpdate("update tbl_member set userid = '" + id + "' ," + pwdStr +" username = '"+name+"' , gender = '"+ gender +"',"
			+ "HOBBY1 = '" + (hobby.length>0 ? hobby[0] : "") + "' , "
			+ "HOBBY2 = '" + (hobby.length>1 ? hobby[1] : "") + "' , "
			+ "HOBBY3 = '" + (hobby.length>2 ? hobby[2] : "") + "' where userid = '"+id+"'");
	
	
	
	
%>

</body>
</html>