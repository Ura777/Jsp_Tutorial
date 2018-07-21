<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- while迴圈 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>while迴圈</title>
	</head>
	<body>
		<%
			int i=1;
			while(i<=10)
			{
				out.print(i + " ");
				i++;
			}
			out.print("<p>");
		%>
	</body>
</html>