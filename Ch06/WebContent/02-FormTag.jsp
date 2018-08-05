<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- html的表單欄位標籤 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>html的表單欄位標籤</title>
	</head>
	<body>
		<form action="" name="form1" method="GET">
			<table>
				<tr>
					<td>帳號</td>
					<td>
						<input type="text" name="userAccount">
					</td>
				</tr>
				<tr>
					<td>密碼</td>
					<td>
						<input type="password" name="userPassword">
					</td>
				</tr>
				<tr>
					<td>性別</td>
					<td>
						<input type="radio" name="sex" value="male" checked="checked">男性
						<input type="radio" name="sex" value="female">女性
						<input type="radio" name="sex" value="other">其他
					</td>
				</tr>
				<tr>
					<td>興趣</td>
					<td>
						<input type="checkbox" name="interest" value="sing">唱歌
						<input type="checkbox" name="interest" value="dance" checked="checked">跳舞
						<input type="checkbox" name="interest" value="sleep">睡覺
					</td>
				</tr>
				<tr>
					<td>要學習的程式語言</td>
					<td>
						<select name="programLanguage">
							<option value="c" selected="selected">C語言</option>
							<option value="cplus">C++
							<option value="java">Java
							<option value="vb">Visual Basic
							<option value="csharp">C#
						</select>
					</td>
				</tr>
				<tr>
					<td>留言</td>
					<td>
						<textarea rows="5" cols="20" name="message"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" name="Submit" value="Send">
    		<input type="reset" name="Submit" value="Reset">
		</form>
	</body>
</html>