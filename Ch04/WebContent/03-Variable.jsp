<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 變數的使用 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>變數的使用</title>
	</head>
	<body>
		<%
			int a, b, sum;
			a = 100;
			b = 200;
			sum = a + b;
			
			//使用String.format()來規定輸出的文字格式
			//<br>為Html的換行
			out.print(String.format("%d + %d = %d <br>", a, b, sum));
			out.print(String.format("%d + %d = %d", a, b, (a + b)));
		%>
	</body>
</html>