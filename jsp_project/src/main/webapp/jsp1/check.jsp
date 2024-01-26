<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<style>
.txt {
	color : red;
	font-size : 30px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<div class="txt">
	<%@ include file = "dbconn.jsp" %>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	String pwd = request.getParameter("pwd");
	String pwd2 = request.getParameter("pwd2");
	String name = request.getParameter("name");
	String phon1 = request.getParameter("phone1");
	String phon2 = request.getParameter("phone2");
	String phon3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	String hobby[] = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
	
	

	out.println("아이디 : "+id + "<br>");
	out.println(" 비밀번호 : "+pwd+ "<br>");
	out.println("비밀번호 확인 :" +pwd2+ "<br>");
	out.println("이름 : " +name+ "<br>");
	out.println("연락처 : " +phon1 +"-"+phon2+"-"+phon3+ "<br>");
	out.println("성별 : " +gender+ "<br>");
	out.print("취미 : ");
	for (int i = 0 ; i < hobby.length-1; i++){
		 out.print(hobby[i] +",");
	}out.print(hobby[hobby.length-1]+"<br>");
	
	out.println("가입 인사 : " +comment+ "<br>");
	%>
	</div>
	
	
	
	
	<%--<%=gender %>--%>
	
	
	
	
	
</body>
</html>
<script>
	function idLength(value) {
	  return value.length >= 4 && value.length <= 12
	}
	
	function onlyNumberAndEnglish(str) {
		  return /^[A-Za-z0-9][A-Za-z0-9]*$/.test(str);
		}
	
	function strongPassword (str) {
		  return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
		}
	
	function isMatch (password1, password2) {
		  return password1 === password2;
		}
	
</script>