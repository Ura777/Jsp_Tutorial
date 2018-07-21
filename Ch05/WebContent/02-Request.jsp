<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- request物件 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>request物件</title>
	</head>
	<body>
		<p align="center">Server 與 Client 端電腦的相關系統資訊</p>
		<table border="1" align="center">
			<tr align="center">
				<td>
					通訊協定名稱/版本
				</td>
				<td>
					<%= request.getProtocol() %>
				</td>
			</tr>
			<tr align="center">
				<td>
					Client端的主機名稱
				</td>
				<td>
					<%= request.getRemoteHost() %>
				</td>
			</tr>
			<tr align="center">
				<td>
					Client端的主機連接埠號碼
				</td>
				<td>
					<%= request.getRemotePort() %>
				</td>
			</tr>
			<tr align="center">
				<td>
					Client端的 IP Address
				</td>
				<td>
					<%= request.getRemoteAddr() %>
				</td>
			</tr>
			<tr align="center">
				<td>
					Server端的主機名稱
				</td>
				<td>
					<%= request.getServerName() %>
				</td>
			</tr>
			<tr align="center">
				<td>
					Server端的主機連接埠號碼
				</td>
				<td>
					<%= request.getServerPort() %>
				</td>
			</tr>
			<tr align="center">
				<td>
					資料傳送的方式
				</td>
				<td>
					<%= request.getMethod() %>
				</td>
			</tr>
		</table>
	</body>
</html>