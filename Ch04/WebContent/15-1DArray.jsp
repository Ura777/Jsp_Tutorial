<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 1維陣列 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>1維陣列</title>
	</head>
	<body>
		<%
			String subject[] = {"國文", "英文", "數學", "社會", "自然"};
			int score[] = new int[5];
			
			//使用亂數決定分數
			//分數範圍是0~100，總共有101個變數，因此nextInt()的引數是101。
			Random myRandom = new Random();
			for(int i=0; i<score.length; i++)
			{
				score[i] = myRandom.nextInt(101);
			}			
		%>
		<p>XXX的各科成績如下：</p>
		<table border="1">
			<tr>
				<%
					//顯示科目名稱
					for(int i=0; i<subject.length; i++)
					{
						out.print(String.format("<td>%s</td>", subject[i]));
					}
				%>
			</tr>
			<tr>
				<%
					//顯示科目分數
					for(int i=0; i<score.length; i++)
					{
						out.print(String.format("<td align=\"center\">%3d</td>", score[i]));
					}
				%>
			</tr>
		</table>
	</body>
</html>