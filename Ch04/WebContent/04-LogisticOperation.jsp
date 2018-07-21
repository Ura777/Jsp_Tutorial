<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 邏輯運算 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>邏輯運算</title>
	</head>
	<body>
		<%
			int x = 50, y = 30;
			
			//And運算
			out.print("And運算<br>");
			if(x > 10 && y > 10)
			{
				out.print(String.format("(%d > 10) && (%d > 10) = True <p>", x, y));
			}
			else
			{
				out.print(String.format("(%d > 10) && (%d > 10) = False <p>", x, y));
			}
			
			//Or運算
			out.print("Or運算<br>");
			if(x > 40 || y < 10)
			{
				out.print(String.format("(%d > 10) || (%d < 10) = True <p>", x, y));
			}
			else
			{
				out.print(String.format("(%d > 10) || (%d < 10) = False <p>", x, y));
			}
			
			//Xor運算
			//False ^ False  = Faluse
			//False ^ True   = True
			//True  ^ Faluse = True
			//True  ^ True   = Faluse
			out.print("Xor運算<br>");
			if(x > 100 ^ y > 10)
			{
				out.print(String.format("(%d > 100) ^ (%d > 10) = True <p>", x, y));
			}
			else
			{
				out.print(String.format("(%d > 100) ^ (%d > 10) = False <p>", x, y));
			}
			
			//Not運算
			boolean z = false;
			
			out.print("Not運算<br>");
			if(!z)
			{
				out.print(String.format("!%b = True <p>", z));
			}
			else
			{
				out.print(String.format("!%b = False <p>", z));
			}
		%>
	</body>
</html>