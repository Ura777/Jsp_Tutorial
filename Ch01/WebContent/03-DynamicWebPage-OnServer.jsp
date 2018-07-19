<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>03-動態網頁-在Server端上執行</title>
	</head>
	<body>
		<div align="center">
			<hr width="80%">
			<div style="color: red; font-size: xx-large;">
				<%
					//使用LocalTime取得現在的小時
					LocalTime today = LocalTime.now();
					int hours = today.getHour();
					
					//根據小時來決掉要輸出的訊息
					if(hours==0)
					{
						out.print("時間不早了，現在是凌晨"+(hours+12)+"點多了");
					}
					if((hours>=1)&&(hours<=5))
					{
						out.print("哇！您是超人呀？現在是"+hours+"點多了");
					}
					if((hours>=6)&&(hours<=8))
					{
						out.print("早安！您好！現在是早上"+hours+"點多了");
					}
					if((hours>=9)&&(hours<=11))
					{
						out.print("您好！現在是上午"+hours+"點多了");
					}
					if(hours==12)
					{
						out.print("午安！現在是中午"+hours+"點多了，吃午飯沒？");
					}
					if((hours>=13)&&(hours<=17))
					{
						out.print("午安！現在是下午"+(hours-12)+"點多了");
					}
					if(hours==18)
					{
						out.print("晚安！現在是晚上"+(hours-12)+"點多了，吃晚餐了沒？");
					}
					if((hours>=19)&&(hours<=23))
					{
						out.print("晚安！現在是晚上"+(hours-12)+"點多了");
					}
				%>
			</div>
			<hr width="80%">
			<h2>
				動態網頁的內容是會改變的
			</h2>
			<h2>
				依照你開啟此份網頁的時間不同
			</h2>
			<h2>
				上方所顯示的問候語就會不一樣
			</h2>
			<h2>
				這就是所謂的動態網頁
			</h2>
		</div>
	</body>
</html>