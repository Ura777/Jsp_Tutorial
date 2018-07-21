<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Method -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>Method</title>
	</head>
	<body>
		<%!
			//自訂Method的區塊開頭寫法為<%!
			int calculate(int inputNumber)
			{
				return (inputNumber + 10) * 5;
			}
		%>
		<%
			int result = calculate(10);
			out.print(result);
		%>
	</body>
</html>