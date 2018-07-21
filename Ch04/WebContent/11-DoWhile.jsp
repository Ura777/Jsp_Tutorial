<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- do while -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>do while</title>
	</head>
	<body>
		<%
			int i=10;
		
			do
			{
				out.print(i + " ");
				i++;
			}while(i<=10);
			
			out.print("<p>");
		%>
	</body>
</html>