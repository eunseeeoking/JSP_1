<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
margin: 0 auto;
}

	table, tr , td {
		border : 1px solid black;
		padding : 5px 10px;
		border-collapse: collapse;
		text-align: center;
	}
	
	th {
		background-color: red; 
	}
	tr {
		background-color: tomato;
		color : blue;
		font-weight: bold;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="dbconn.jsp"%>
	<%
	ResultSet rs = stmt.executeQuery("select * from tbl_member");
	%>
	<form action="user_update.jsp" name="userInfo">
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>핸드폰번호</th>
			<th>성별</th>
			<th>취미1</th>
			<th>취미2</th>
			<th>취미3</th>
			<th>수정</th>
			<th>삭제</th>
			<th>비밀번호<br>초기화</th>

		</tr>

		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("userid")%></td>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("phone")%></td>
			<td><%=rs.getString("gender")%></td>
			<td><%=rs.getString("hobby1")%></td>
			<td><%=rs.getString("hobby2")%></td>
			<td><%=rs.getString("hobby3")%></td>
			<td><input type="button" onclick="btn('<%=rs.getString("userId")%>')" value="수정"></td>
			<td><input type="button" onclick="del('<%=rs.getString("userId")%>')" value="삭제"></td>
			<%
			if(rs.getInt("cnt")>=5){%>
			<td><input type="button" onclick="set('<%=rs.getString("userId")%>')" value="초기화"></td>
				<%}%>
		</tr>
		<%
		}
		%>




	</table>
</form>
</body>
</html>

<script>
	function btn(txt) {
		location.href="user_update.jsp?id="+txt;
	}
	
	function del(txt) {
		location.href="user_delete.jsp?id="+txt;
	}
	
	function set(txt) {
		location.href="reset.jsp?id="+txt;
	}
</script>