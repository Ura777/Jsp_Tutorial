<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 亂數 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>隨機廣告</title>
	</head>
	<body>
		<%
			Random ran = new Random();
			int n=ran.nextInt(7)+1;
		   	String url="";
		   	
		   	//根據亂數的結果來選擇URL
		   	switch(n)
		   	{
		   		case 1:
		   			url="http://www.flag.tw/";
		   			break;
		   		case 2:
		   			url="https://shopping.pchome.com.tw/";
		   			break;
		   		case 3:
		   			url="https://tw.yahoo.com/";
		   			break;
		   		case 4:
		   			url="https://www.google.com.tw/";
		   			break;
		   		case 5:
		   			url="https://www.facebook.com/";
		   			break;
		   		case 6:
		   			url="https://www.wikipedia.org/";
		   			break;
		   		case 7:
		   			url="https://twitter.com/";
		   			break;
		   	}
		%>
		
		<a href="<% out.print(url); %>" target="_blank">
			<img src="image/<% out.print(n);%>.JPG">
		</a>
	</body>
</html>