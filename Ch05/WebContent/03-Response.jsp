<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- response物件 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>response物件</title>
	</head>
	<body>
		<%
			//自定錯誤訊息
			response.sendError(550, "喔喔！你的網頁發生錯誤了！");
		%>
	</body>
</html>