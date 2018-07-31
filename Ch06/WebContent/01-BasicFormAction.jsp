<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 表單的處理 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>表單的處理</title>
	</head>
	<body>
		<%
    		out.print( "您的大名是" + request.getParameter("name") + "<p>");
    		out.print("您是" + request.getParameter("sex"));
    	%>
	</body>
</html>