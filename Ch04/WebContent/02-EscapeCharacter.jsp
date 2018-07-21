<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 跳脫字元  -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>跳脫字元 - 換行</title>
	</head>
	<body>
		<%
			out.print("程式碼的換行要用跳脫字元。\n");
			out.print("網頁內容的換行要用br標籤。<br>");
			out.print("就像是這樣，已經換行了。");
		%>
	</body>
</html>