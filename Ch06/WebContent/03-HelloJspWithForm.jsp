<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 使用表單來呈現Hello JSP -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>使用表單來呈現Hello JSP</title>
	</head>
	<body>
		<form method="POST" action="03-HelloJspWithFormAction.jsp">
    		<p>
    			<input type="text" name="txtName" size="20">
    			<br><br>
    			<input type="submit" value="傳送" >
    			<input type="reset" value="重設" >
    		</p>
  </form> 
	</body>
</html>