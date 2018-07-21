<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- session物件 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>session物件</title>
	</head>
	<body>
		<%
			session.setAttribute("username", "Allen");
			session.setAttribute("password", 1234);
			
			Object username = session.getAttribute("username");
			Object password = session.getAttribute("password");
			
			out.print("使用者名稱：" + username + "<br>");
			out.print("密碼：" + password + "<br>");
		%>
	</body>
</html>