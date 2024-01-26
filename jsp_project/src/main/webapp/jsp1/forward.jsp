<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


			<div>여기 뭐가 있던지</div>
			<jsp:forward page="forward_view.jsp">
			<jsp:param value="honggilgdong" name="name"/>
			<jsp:param value="hong123" name="id"/>
			</jsp:forward>
			
		

</body>
</html>