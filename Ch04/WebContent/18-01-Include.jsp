<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 引入其他網頁 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>引入其他網頁</title>
	</head>
	<body>
		我是網頁的內容，下方式引入其他網頁的方式之介紹。
		<p>
			第一種是使用JSP區塊，區塊內寫上@include file=&quot;網頁檔案&quot;。
			<br>
			<%@include file="18-02-IncludedFile.jsp"%>
		</p>
		<p>
			第二種是使用&lt;jsp:include&gt;，標籤內的屬性page = &quot;網頁檔案&quot;。
			<br>
			<jsp:include page="18-02-IncludedFile.jsp"></jsp:include>
		</p>
	</body>
</html>