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



<%	String id = request.getParameter("id");
	String sql = "SELECT * FROM TBL_MEMBER WHERE USERID = '" + id + "'";
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	String ID = rs.getString("USERID");
	String name = rs.getString("USERNAME");
	
	String gender = rs.getString("GENDER");
	String hobby1 = rs.getString("HOBBY1");
	String hobby2 = rs.getString("HOBBY2");
	String hobby3 = rs.getString("HOBBY3");
	String comment = rs.getString("CMT");
	String phon = rs.getString("PHONE");
	String phon1 = phon.substring(0,3);	
	String phon2 = phon.substring(4,8);	
	String phon3 = phon.substring(9,13);	

	
	
	%>
	
	<h3>정보수정</h3>
	<form action="check2.jsp" name="join" method="post">
		<div>
			<span class="txt_input">아이디 : </span><input type="text" value="<%=id%>" disabled>
				<%out.print(phon3); %>
			
		</div>
		<div>
			<span class="txt_input">비밀번호 : </span><input type="password"
				name="pwd1">
		</div>
		<div>
			<span class="txt_input">비번확인 : </span><input type="password"
				name="pwd2">
		</div>
		<div>
			<span class="txt_input">이 름 : </span><input type="text" name="name" value="<%=name%>" disabled>
			
		</div>

		<div>
			<span class="select_input">연락처 :</span> <select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2" value ="<%=phon2%>"> -
			<input type="text" maxlength="4" size="4" name="phone3" value ="<%=phon3%>">
		</div>
		<div>
			<span class="select_input">성 별 :</span>
			 <label><input type="radio" name="gender" value="남성" checked>남성 </label>
			 <label><input type="radio" name="gender" value="여성">여성 </label>
		</div>
		<div>
			<span class="select_input">취 미 :</span> <label><input
				type="checkbox" name="hobby" value="독서" checked>독서</label> <label><input
				type="checkbox" name="hobby" value="운동"> 운동</label> <label><input
				type="checkbox" name="hobby" value="영화"> 영화</label>
		</div>
		<div>
			<textarea name="comment" cols="30" placeholder="가입인사를 입력해주세요."></textarea>
		</div>
		<div>
			<input type="submit" value="수정하기" onclick="check()"> <input type="reset"
				value="다시쓰기">
		</div>
	</form>

</body>
</html>

<script>
</script>