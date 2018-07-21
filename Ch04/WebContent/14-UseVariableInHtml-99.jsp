<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 在Html中使用JSP變數 - 九九乘法表 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>在Html中使用JSP變數 - 九九乘法表</title>
	</head>
	<body>
		<p>九九乘法表</p>
		<table border="1">
			<%	
				for(int x=1; x<=9; x++)
				{
					out.print("<tr>\n");
					for(int y=1; y<=9; y++)
					{
						out.print(String.format("<td>%2d * %2d = %2d</td>\n", x, y, (x*y)));
					}
					out.print("</tr>\n");
				}
			%>
		</table>
	</body>
</html>