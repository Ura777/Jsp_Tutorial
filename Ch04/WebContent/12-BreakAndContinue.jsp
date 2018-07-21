<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- break和continue -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>break和continue</title>
	</head>
	<body>
		<%
			int i;
		
			//break
			for(i = 1; i<=10; i++)
			{
				if (i==3)
				{
					break;
				}
				out.print(i + " ");
			}
			out.print("<br>");
			out.print("迴圈離開時候的i變數 = " + i + "<p>");
			
			//continue
			int beJumpedVariable = 0;			
			for(i=1; i<=10; i++)
			{
				if (i==3)
				{
					beJumpedVariable = i;
					continue;
				}
				out.print(i + " ");
			}
			out.print("<br>");
			out.print("迴圈跳過時候的i變數 = " + beJumpedVariable + "<br>");
		%>
	</body>
</html>