<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 表單處理 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>表單處理</title>
	</head>
	<body>
		<%
			//使用陣列來儲存form回傳的數值
        	String select[] = request.getParameterValues("favorite");
        	int count = 0;
        
        	try 
        	{
        		//總共選了幾項
            	count = select.length;
        	}
        	catch(Exception e)
        	{
        		//導向其他網頁
            	response.sendRedirect("06-CheckboxMultiple.jsp");
        	}

        	out.print("<font color = 'red'>您喜歡的程式語言為：</font><p>");
        	for(int i = 0; i < count ; i++)
        	{
        		out.print(select[i]+"<br>");
        	}
            
    %>
	</body>
</html>