<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 在Html中使用JSP變數 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>在Html中使用JSP變數</title>
	</head>
	<body>
		<!-- JSP -->
		<%
			//建立LocalDate物件
			LocalDate myLocalDate = LocalDate.now();
		
			//取得現在是星期幾
			int myDay = myLocalDate.getDayOfWeek().getValue();
		%>
		<!-- HTML -->
		<p	align="center">
			每日一句
			<div align="center">
				<img src="image/<% out.print(myDay); %>.JPG">
			</div>
		</p>
	</body>
</html>