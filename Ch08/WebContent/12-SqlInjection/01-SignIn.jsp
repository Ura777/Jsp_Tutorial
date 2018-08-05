<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 登入頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>登入頁面</title>
	</head>
	<body>
		<form action="02-Check.jsp" method="POST">
			帳號：<input type="text" name="id">
			<p>
			密碼：<input type="password" name="pwd">
			<p>
			<input type="submit" name="submit" value="登入">
			<input type="reset" name="reset" value="清除">
		</form>
	</body>
</html>