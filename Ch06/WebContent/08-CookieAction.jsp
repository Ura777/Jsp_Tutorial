<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 表單處理 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>表單處理</title>
	</head>
	<body>
		<%
			//表單傳中文數值時要設定編碼
	    	request.setCharacterEncoding("UTF-8");
			//取得Form參數
        	String strname = request.getParameter("name");
        	String strsex = request.getParameter("sex");
        	String strcolor = request.getParameter("color");
        	
        	//設定Cookie中文編碼
        	strname = URLEncoder.encode(strname, "UTF-8");
        	
        	//建立Cookie
            Cookie nameCookie = new Cookie("name", strname);
            Cookie sexCookie = new Cookie("sex",strsex);
            Cookie colorCookie = new Cookie("color",strcolor);
            //設定Cookie在5秒的時間內皆為有效
            nameCookie.setMaxAge(5);
            
          	//將Cookie寫入client端
            response.addCookie(nameCookie);
            response.addCookie(sexCookie);
            response.addCookie(colorCookie);
            
          	//導入另一個jsp網頁
            response.sendRedirect("08-CookieShow.jsp");
		%>
	</body>
</html>