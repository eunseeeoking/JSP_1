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

	ResultSet rs = stmt.executeQuery("select * from tbl_member where userid='"+id+"'");
	rs.next();

	String name = rs.getString("username");
	String gender = rs.getString("username");




%>
<form action="user_update_view.jsp">
<input type="text" name ="id" value="<%=id%>" hidden>
<div>아이디 : <input type="text" value="<%=id%>" disabled></div>
<div>비밀번호 : <input type="text" name ="pwd"></div>
<div>이름 : <input type="text" name ="name" value="<%=name%>"></div>

<%
	if(gender.equals("남성")){
		out.print("<div><input type='radio' name='gender' value='남성' checked>남성");
		out.print("<input type='radio' name='gender' value='여성' >여성</div>");
	}else {
		out.print("<div><input type='radio' name='gender' value='남성'>남성");
		out.print("<input type='radio' name='gender' value='여성' checked>여성</div>");
	}
%>

<input type="submit" value="수정하기">
</form>

</body>
</html>