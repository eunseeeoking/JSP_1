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
		background-color: #ccc; 
	}
	tr a{
		text-decoration:none;
		color : black;
		font-weight: bold;
		cursor: pointer;
	}
	tr a:hover{
		color : blue;
		
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	String id = request.getParameter("id");
	 ResultSet rs = stmt.executeQuery("select b.boardno, b.title, b.hit, m.username, to_char(cdatetime,'YY-MM-DD HH24:MI') AS CDATETIME , to_char(udatetime,'YY-MM-DD HH24:MI') AS UDATETIME from TBL_BOARD b inner join tbl_member m on b.userid = m.userid");

%>
<form action="board_view.jsp" name="boardInfo">
<table border="1">
		<tr>
			<th style="width:10%">번호</th>
			<th style="width:40%">제목</th>
			<th style="width:10%">조회수</th>
			<th style="width:10%">작성자</th>
			<th style="width:15%">작성일</th>
			<th style="width:15%">수정일</th>
		</tr>
		
		<%while(rs.next()){%>
		<tr>
		
		<td><%=rs.getInt("BOARDNO")%></td>
		<td><a onclick="btn('<%=rs.getInt("boardno")%>')"><%=rs.getString("TITLE")%></a></td>
		<td><%=rs.getInt("HIT")%></td>
		<td><%=rs.getString("USERNAME")%></td>
		<td><%=rs.getString("CDATETIME")%></td>
		<td><%=rs.getString("UDATETIME")%></td>
		</tr>
		<%} %> 

		
</table>
</form>
</body>
</html>
<script>
	function btn(no) {
		var boardInfo = document.boardInfo;
		
		location.href = "board_view.jsp?boardno="+no;
	}

</script>