<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 留言版的留言頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>我要填寫留言</title>
	</head>
	<body>
		<a href="01-View.jsp?page=1">觀看留言</a><p>
		<form name="form1" method="post" action="03-Add.jsp">
			姓名：<input type="text" name="name">
			<p>
			郵件：<input type="text" name="mail">
			<p>
			主題：<input type="text" name="subject">
			<p>
			內容：<textarea rows=5 name="content"></textarea>
			<p>
			<input type="submit" name="Submit" value="送出留言">
			<input type="Reset" name="Reset" value="重新填寫">
		</form>
	</body>
</html>