<%@page import="javax.swing.text.Document"%>
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
	String pwd = request.getParameter("pwd");

	String sql = "SELECT * FROM TBL_MEMBER WHERE USERID = '" + id + "'";

	/* String sqlPWD = "SELECT * FROM TBL_MEMBER WHERE PWD = '"+ pwd +"'"; */

	/* String sql = "SELECT * FROM TBL_MEMBER WHERE USERID = '"+ id + "'AND PWD='" + pwd +"'"; */

	ResultSet rs = stmt.executeQuery(sql);
	/* ResultSet rsID =stmt.executeQuery(sqlID); 
	ResultSet rsPWD = stmt.executeQuery(sqlPWD); */

	/* if(!rsID.next()){
		out.print("아이디가 없습니다.");
	}
	 if(rsID.next() && !rsPWD.next()){
		 out.print("비밀번호가 틀렸습니다."); 
	}*/

	if (rs.next()) {
		if (rs.getString("PWD").equals(pwd)) {
			out.print(rs.getString("USERNAME") + "님 환영합니다");
	%>
	<form action="update_user_T.jsp" method="post">
		<div>
			<input type="text" name="id" value="<%=id%>" hidden>
			<!-- hidden -->
			<input type="submit" value="회원정보 수정">
			<%rs.getString("GENDER"); %>
			
		</div>
	</form>

	<%
	
	} else {
	out.print("비밀번호를 확인 하세요");
	}
	} else {
	out.print("없는 아이디!");
	}
	%>

</body>
</html>