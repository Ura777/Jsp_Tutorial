<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 設定計數器 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>設定計數器</title>
	</head>
	<body>
		<%
			application.setAttribute("counter", "1");
			out.print("計數器初始化完成");
		%>
	</body>
</html>