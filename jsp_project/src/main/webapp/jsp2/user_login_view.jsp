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
<form action="user_update.jsp" name="userInfo">
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	ResultSet rs = stmt.executeQuery("select * from tbl_member where userid = '"+id+"' and pwd = '"+pwd+"'"); 
	 
	 if(rs.next()){
		String username =rs.getString("username");
		out.print(username +"님 환영합니다. 로그인 성공");
	%>
	<div>
	<input type =text value="<%=id %>" name="id" hidden>
	<input type ="button" value="회원정보 수정" onclick="del('u')" > <!-- formaction="" -->
	<input type ="button" value="회원 삭제" onclick="del('d')">
	</div>
		</form>
	<%}else {
		out.print("로그인 실패");
	}
	%>
</body>
</html>
<script>
	function del(txt) {
		var userInfo = document.userInfo;
		if(txt == "u") {
			userInfo.action = "user_update.jsp";
		}else {
			userInfo.action ="user_delete.jsp";
		}
		userInfo.submit();
		
	}
</script>