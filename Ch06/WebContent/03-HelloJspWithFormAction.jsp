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
        	String strName;
        	strName = request.getParameter("txtName");
        	out.println(String.format("Hello %s!<p>歡迎使用JSP互動是動態網頁!!", strName));
    	%>
	</body>
</html>