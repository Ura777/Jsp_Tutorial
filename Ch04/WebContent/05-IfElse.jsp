<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- if else -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>if-else</title>
	</head>
	<body>
		<%
			int score = 59;
			
			if(score >= 60)
			{
				out.print(String.format("分數為%d，結果為及格。<p>", score));
			}
			else
			{
				out.print(String.format("分數為%d，結果為不及格。<p>", score));
			}
		%>
	</body>
</html>