<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Checkbox的表單處理 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>Checkbox的表單處理</title>
	</head>
	<body>
		<p>
			請選擇您最喜歡的程式語言
		</p>
		<form action = "06-CheckboxMultipleAction.jsp" method = "post" >
        	<input type = "checkbox" name = "favorite" value = "Java">Java<br>
        	<input type = "checkbox" name = "favorite" value = "C++">C++<br>
        	<input type = "checkbox" name = "favorite" value = "VisualBasic">Visual Basic<br>
        	<input type = "checkbox" name = "favorite" value = "C#">C#<p>
        	<input type = "submit" value = "送出">
    </form>
	</body>
</html>