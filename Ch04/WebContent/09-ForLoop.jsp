<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 迴圈-->
<html>
	<head>
		<meta charset="UTF-8">
		<title>迴圈</title>
	</head>
	<body>
		<%
			out.print("遞增迴圈<br>");
			for(int i=1; i<=10; i++)
			{
				out.print(i + " ");
			}
			out.print("<p>");
			
			out.print("遞減迴圈<br>");
			for(int i=10; i>=1; i--)
			{
				out.print(i + " ");
			}
			out.print("<p>");
		%>
	</body>
</html>