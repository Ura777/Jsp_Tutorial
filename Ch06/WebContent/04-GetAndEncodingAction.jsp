<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 表單的處理 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>表單的處理</title>
	</head>
	<body>
		<%
			//form傳遞過來的參數以UTF-8解碼
			request.setCharacterEncoding("UTF-8");

			String name = request.getParameter("name");
			String email = request.getParameter("email");
        	String tel = request.getParameter("tel");
    	%>
    	Hi, <%=name%>您好 ：
    	<p>
    	您輸入的個人資料如下：
    	<p>
   		 姓名：<%=name%>
   		<br>
    	E-mail：<%=email%>
    	<br>
    	電話：<%=tel%>
	</body>
</html>