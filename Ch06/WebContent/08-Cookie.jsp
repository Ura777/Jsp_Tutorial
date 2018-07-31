<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 使用Cookie來儲存使用者資訊 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>使用Cookie來儲存使用者資訊</title>
	</head>
	<body>
		<form action = "08-CookieAction.jsp" method = "post" >
        <table border="1">
        	<tr>
        		<td >姓名：</td>
            	<td>
            		<input type = "text" name = "name">
            	</td>
        	</tr>
        	<tr>
        		<td>性別：</td>
            	<td>男<input type = "radio" name = "sex" value = "M" checked>
                	女<input type = "radio" name = "sex" value = "F">
                	其他<input type = "radio" name = "sex" value = "O">
            	</td>
        	</tr>
        	<tr>
        		<td>喜好顏色：</td>
            	<td>
            		<select size = "1" name = "color">
                    	<option selected>none
                    	<option>blue
                    	<option>green
                    	<option>red
                    	<option>yellow
                	</select>
            	</td>
            </tr>
            <tr>
            	<td colspan = "2" align = "center">
            		<input type = "submit" value = "送出資料">
            		<input type = "reset" value = "重新填寫">
            	</td>
        	</tr>
        </table>
    </form>
	</body>
</html>