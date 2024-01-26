<%@page import="org.apache.catalina.valves.rewrite.InternalRewriteMap.LowerCase"%>
<%@page import="org.apache.catalina.valves.rewrite.InternalRewriteMap.UpperCase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	
	<%!
	
	String lower(String a) {
		return a.toLowerCase();
	}
	%> <!-- (선언문부분,declaration)변수 선언, 메소드 작성 -->
	<% 
		
	%> <%-- (스크립틀릿, scriptlet)변수 선언, 자바 로직 작성 --%>
	<%= 
	lower("ASDASDAFWQWR")
	%> <!-- (표현식부분, expression)결과 출력 -->
</body>
</html>