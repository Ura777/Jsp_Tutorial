<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- if else if -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>if-else if</title>
	</head>
	<body>
		<%
			int score = 30;
		
			if(score>=60 && score<=100)
			{
				out.print(String.format("分數為%d，結果為及格。<p>", score));
			}
			else if (score>=40 && score<60)
			{
				out.print(String.format("分數為%d，結果為不及格，請再努力。<p>", score));
			}
			else
			{
				out.print(String.format("分數為%d，結果為不及格，需要參加補考。<p>", score));
			}
		%>
	</body>
</html>