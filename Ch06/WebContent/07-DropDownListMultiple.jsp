<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 下拉式選單的表單處理 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>下拉式選單的表單處理</title>
	</head>
	<body>
		<p>
			請選擇您最喜歡的程式語言
		</p>
	</body>
		<form action = "07-DropDownListMultipleAction.jsp" method = "post" >
        	<select name = "favorite" size = "4" multiple>
        		<option selected value="Java">Java
        		<option value="C++">C++
        		<option value="Visual Basic">Visual Basic
        		<option value="C#">C#
        		<option value="Python">Python
        	</select>
        	<p>
        	<input type = "submit" value = "送出">
    	</form>
</html>