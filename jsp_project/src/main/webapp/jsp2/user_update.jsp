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
	<%!
		String checkBox(String hobby, String hobby2){
			String tag = "";
			if(hobby != null && !hobby.equals("")){
				tag = "<label><input type='checkbox' name='hobby' value='" + hobby2 + "' + checked>" + hobby2 + "</label>";
			} else {
				tag = "<label><input type='checkbox' name='hobby' value='" + hobby2 + "'>" + hobby2 + "</label>";
			}
			return tag;
		}
	%>
	<%
	String id = request.getParameter("id");
	ResultSet rs = stmt.executeQuery("select * from tbl_member where userid = '"+id+"'");
	rs.next();
	String gender = rs.getString("gender");
	String hobby1 = rs.getString("hobby1");
	String hobby2 = rs.getString("hobby2");
	String hobby3 = rs.getString("hobby3");
	
	String name = rs.getString("username");
	%>
	<form action="user_update_result.jsp">
		<div><input type="text" name="id" value="<%=id%>" hidden>
			아이디 : <input type="text" name="id" value="<%=id%>" disabled>
		</div>
		<div>
			패스워드 : <input type="text" name="pwd" value="">
		</div>
		<div>
			이름 : <input type="text" name="name"value="<%=name%>">
		</div>
		<div>
		<%
			if(gender.equals("남성")){
				out.print("<input type='radio' name='gender' value='남성' checked>남성");
				out.print("<input type='radio' name='gender' value='여성' >여성");
			}else{
				out.print("<input type='radio' name='gender' value='남성' >남성");
				out.print("<input type='radio' name='gender' value='여성' checked>여성");
			}
		
		
		%>
		
		
		<div><span class="select_input">취 미 :</span>
		<%	out.println(checkBox(hobby1, "독서")); %>
		<%	out.println(checkBox(hobby2, "운동")); %>
		<%	out.println(checkBox(hobby3, "영화")); %>
        </div>
		</div>
		<div>
			<input type="submit" value="수정하기">
		</div>
	</form>

</body>
</html>