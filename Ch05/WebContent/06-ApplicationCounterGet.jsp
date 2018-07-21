<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 取得計數器的數值 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>取得計數器的數值</title>
	</head>
	<body>
		<%
			//取得application之變數counter的數值
			//型態轉換為Ojbect -> String -> Integer
			Object number = application.getAttribute("counter");
			String number2 = String.valueOf(number);
			int number3 = Integer.parseInt(number2);
			
			//顯示結果
			out.print("來訪人數：" + number3);
			
			//計數器數值+1
			number3++;
			
			//儲存最新的計數器的數值
			//型態轉換為Integer -> String
			String counter = String.valueOf(number3);
			application.setAttribute("counter", counter);
		%>
	</body>
</html>