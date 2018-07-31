<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 顯示Cookie內儲存的使用者資訊 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>顯示Cookie內儲存的使用者資訊</title>
	</head>
	<body>
		<%
			//讀取已存在Client端的Cookie
	      	Cookie cookies[] = request.getCookies();
	        int count = cookies.length;
	        String name = "", sex = "", color = "";
	        
	        for(int i=0; i<count; i++)
	        {
	        	if(cookies[i].getName().equals("name"))
	        	{
	        		//設定Cookie中文解碼
	        		name = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
	        	}
	        	if(cookies[i].getName().equals("sex"))
	        	{
	        		sex =cookies[i].getValue();
	        	}
	        	if(cookies[i].getName().equals("color"))
	        	{
	        		color = cookies[i].getValue();
	        	}
	        }
		%>
		<font color = "<%=color%>" size = "5"><%=name%></font>
       	您好，以下是您的個人資料…
       	<p>
       	<%
        	out.println("性別：<br>");
        	switch (sex)
        	{
        		case "M":
        			out.println("我是男生");
        			break;
        			
        		case "F":
        			out.println("我是女生");
        			break;
        			
        		case "O":
        			out.println("我是其他性別");
        			break;
        	}
    	%>
       	
	</body>
</html>