<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 運算值 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>運算值</title>
	</head>
	<body>
		<%
			int x[] = {2, 4, 6};
			for(int i=0; i<x.length; i++)
			{
		%>
		
		<div style="color: blue;">輸出陣列 x[<%= i %>]的值為
		
		<%
				out.print(x[i] + "<br>");
			}
		%>
		</div>
	</body>
</html>