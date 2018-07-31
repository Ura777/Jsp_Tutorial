<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 基本的表單 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>基本的表單</title>
	</head>
	<body>
		<form name="form1" method="GET" action="01-BasicFormAction.jsp" >
    		<table>
    			<tr>
    				<td>姓名</td>
    				<td>
    					<input type="text" name="name">
    				</td>
    			</tr>
    			<tr>
    				<td>姓名</td>
    				<td>
    					<input type="radio" name="sex" value="Boy">男生
    					<input type="radio" name="sex" value="Girl">女生
    				</td>
    			</tr>
    		</table>  
    		<input type="submit" name="Submit" value="Send">
    		<input type="reset" name="Submit" value="Reset"> 		
    	</form>
	</body>
</html>