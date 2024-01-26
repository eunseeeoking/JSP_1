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
	int cnt=stmt.executeUpdate("update tbl_member set cnt='0' where userid ='"+id+"'");

	%>
	<div>초기화 되었습니다.</div>
	<input type="button" value="돌아가기" onclick="userturn()">
	

</body>
</html>
<script>
function userturn() {
	location.href="user_list.jsp?"
}


</script>


