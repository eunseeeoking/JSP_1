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
	<form action="user_update.jsp" name="userInfo">
		<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		ResultSet rs = stmt.executeQuery("select * from tbl_member where userid = '" + id + "'");

		if (rs.next()) {

			int cnt = rs.getInt("CNT");

			if (cnt < 5) {
				if (rs.getString("pwd").equals(pwd)) {
			out.print(rs.getString("username") + "님 환영합니다 ! 로그인완료");
			cnt = 0;
			stmt.executeUpdate("update tbl_member set cnt='" + cnt + "' where userid='" + id + "'");
		%>
		<input value="<%=id%>" name="id" hidden>
		<div>
			<input type='button' onclick="btn('u')" value='회원 정보 수정'>
		</div>
		<div>
			<input type='button' onclick="btn('d')" value='회원 정보 삭제'>
		</div>
		<div>
			<input type='button' onclick="btn('g')" value='게시판 이동'>
		</div>
		<%
		}

		else {
		cnt++;
		stmt.executeUpdate("update tbl_member set cnt='" + cnt + "' where userid='" + id + "'");
		out.println(cnt + "번째 로그인실패 비밀번호를 확인해 주세요");
		out.println("<input type='button' value='되돌아가기' onclick='re()'"); /* history.back() */
		}
		} else {
		out.println(cnt + "번 이상 로그인 실패 / 관리자에게 문의 하세요");
		out.println("<input type='button' value='되돌아가기' onclick='re()'");
		}
		} else {
		out.println("없는 아이디 입니다.");
		}
		%>
	</form>

</body>
</html>
<script>
	function btn(txt) {

		var userInfo = document.userInfo;
		if (txt == "u") {
			userInfo.action = "user_update.jsp";
		} else if (txt == "d") {
			userInfo.action = "user_delete.jsp";
		}
		else if(txt == "g"){
			userInfo.action = "board_list.jsp";
		}
		userInfo.submit();
	}

	function re() {
		location.href = "user_login.jsp"
	}
</script>