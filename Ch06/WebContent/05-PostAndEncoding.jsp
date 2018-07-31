<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- method為Post的表單 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>method為Get的表單</title>
	</head>
	<body>
		<form action = "05-PostAndEncodingAction.jsp" method = "post" >
        	<table>
        		<tr>
        			<td bgcolor = "#E1E1E1">姓名：</td>
        			<td>
        				<input type = "text" name = "name">
        			</td>
        		</tr>
        		<tr>
        			<td bgcolor = "#E1E1E1">電話：</td>
        			<td>
        				<input type = "text" name = "tel">
        			</td>
        		</tr>
        		<tr>
        			<td bgcolor = "#E1E1E1">E-mail：</td>
        			<td>
        				<input type = "text" name = "email">
        			</td>
        		</tr>
        		<tr>
        			<td colspan = "2" align = "center">
        				<input type = "submit" value = "確定">
        				<input type = "reset" value = "取消">
        			</td>
        		</tr>
        	</table>
    	</form>
	</body>
</html>