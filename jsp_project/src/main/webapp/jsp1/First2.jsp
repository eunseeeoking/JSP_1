<%@page import="java.util.Calendar"%>
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
	int z =0;
	int sum(int a , int b){
		return a + b ;
	};
	
	%>
	
	<% 
		Calendar c = Calendar.getInstance();
		
	for(int i = 1 ; i <=9 ; i++){
		out.println("<h1 style='color : red'>======== "+i + "단 ========" + "</h1><br>");
			for (int z = 2 ; z <=9 ; z++){
				out.println(i + " * " + z + " = " + i*z + "<br>");
			}
		
		}
	
	%>
	<h1><%=sum(1,2) %></h1>	
</body>
</html>