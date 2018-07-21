<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 2維陣列 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>2維陣列</title>
	</head>
	<body>
		<%
    		String X[][];
    		X=new String[4][3];
    		
    		X[0][0]= "產品";			
    		X[0][1]= "成本";		
    		X[0][2]= "售價";			
    		X[1][0]= "西瓜";		
    		X[1][1]= "60";			
    		X[1][2]= "68";		
    		X[2][0]= "香蕉";			
    		X[2][1]= "50";			
    		X[2][2]= "55";			
    		X[3][0]= "蘋果";			
    		X[3][1]= "12";			
    		X[3][2]= "18";
    	%>
    	<p>產品的價目表如下：</p>
    	<table border="1">
    		<%
    			for (int i=0;i<=3;i++)
    	    	{
    				out.print("<tr align=\"center\">");
    	       		for (int j=0;j<=2;j++)
    	       		{
    	           		out.print(String.format("<td>%s</td>", X[i][j]));
    	       		}
    	       		out.print("</tr>");
    	    	}
    		%>
    	</table>
	</body>
</html>