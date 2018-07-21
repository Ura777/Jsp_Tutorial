<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- switch-case -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>switch case</title>
	</head>
	<body>
		<%
			char grade='E';
	    	switch (grade)
	    	{
	        	case 'A':
	            	out.print("成績超過90分");
	            	break;
	        	case 'B':
	            	out.print("成績為80~89分之間");
	            	break;
	        	case 'C':
	            	out.print("成績為70~79分之間");
	            	break;
	        	case 'D':
	            	out.print("成績為60~69分之間");
	            	break;
	        	default:
	            	out.print("成績低於60分");
	    	}
		%>
	</body>
</html>