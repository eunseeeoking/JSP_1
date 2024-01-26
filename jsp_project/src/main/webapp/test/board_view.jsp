<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
	padding: 5px 10px;
	border-collapse: collapse;
	text-align: center;
}

table {
}

td {
	width: 75%;
}

th {
	width: 25%;
	background-color: #ccc;
}
input{
margin-top : 50px;

}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String boardno = request.getParameter("boardno"); /* Integer.parseInt() */
	stmt.executeUpdate("update tbl_board set hit=hit+1 where boardno="+ boardno);
	out.print(boardno + "번째 글 입니다");
	
	ResultSet rs = stmt.executeQuery(
			"select * from tbl_board b inner join tbl_member m on b.userid=m.userid where boardno='" + boardno + "'");
	rs.next();
	%>
	<table>
		<tr>
			<th>제목</th>
			<td><%=rs.getString("TITLE")%></td>


		</tr>
		<tr>
			<th>내용</th>
			<td><%=rs.getString("contents")%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=rs.getString("username")%></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><%=rs.getInt("hit")%></td>
		</tr>
		<tr>
			<th>수정날짜</th>
			<td><%=rs.getString("udatetime")%></td>
		</tr>
	</table>
	<div>
	<input type="button" value="삭제하기" onclick="del(<%= boardno %>)">
	</div>


</body>
</html>
<script>
function del(no) {
	location.href="boarder_delete.jsp?boardno="+no;
}


</script>