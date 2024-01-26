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
	String boardno = request.getParameter("boardno");
	stmt.executeUpdate("delete tbl_board where boardno = '"+boardno+"'");
	

%>
<div>
	삭제완료~
</div>
</body>
</html>