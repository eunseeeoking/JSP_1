<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="user_join_save.jsp">
<div>아이디 : <input type="text" name ="id"></div>
<div>비밀번호 : <input type="text" name ="pwd"></div>
<div>이름 : <input type="text" name ="name"></div>
<div><input type="radio" name="gender" value="남성" checked>남성
<input type="radio" name="gender" value="여성" >여성</div>
<input type="submit" value="가입하기">
</form>
	

</body>
</html>