<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- application物件 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>application物件</title>
	</head>
	<body>
		<%
			//設定變數資料
			application.setAttribute("name", "Allen");
			application.setAttribute("age", "22");
			
			//取得變數資料
			Object name = application.getAttribute("name");
			Object age = application.getAttribute("age");
		%>
		以下是<%= name %>的資料：<br>
		姓名：<%= name %><br>
		年齡：<%= age %><p>
		
	</body>
</html>