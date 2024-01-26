<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


out.print("select b.boardno, b.title, b.hit, m.username, to_char(cdatetime,'YY-MM-DD HH24:MI') AS CDATETIME, to_char(udatetime,'YY-MM-DD HH24:MI') AS UDATETIME from TBL_BOARD b inner join tbl_member m on b.userid = m.userid");

%>
</body>
</html>