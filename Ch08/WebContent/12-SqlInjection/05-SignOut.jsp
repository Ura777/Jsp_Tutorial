<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 登出頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>登出頁面</title>
	</head>
	<body>
		<%
			//清除session
			session.removeAttribute("id");
			response.sendRedirect("01-SignIn.jsp");
		%>
	</body>
</html>