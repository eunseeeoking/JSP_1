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
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	
	String pwdWord = "";
	
	if(pwd != null && !pwd.equals("")){
		pwdWord = "pwd = '"+pwd+"', ";
	}
	
	out.print("update tbl_member set "+pwdWord+"username ='"+name+"', gender ='"+gender+"' where userid = '"+id+"'");

	stmt.executeUpdate("update tbl_member set "+pwdWord+"username ='"+name+"',gender ='"+gender+"' where userid = '"+id+"'");

%>

</body>
</html>