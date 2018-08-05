<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 隨機跑馬燈 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>隨機跑馬燈</title>
	</head>
	<body>
		<!-- 寬度50% + 無框 + 背景顏色為灰色的表格 -->
		<table width="50%" border="0" bgcolor="#CCCCCC">
			<tr>
				<td>
					<!-- 
					    scrollamount可以控制跑馬燈的速度，數值越大跑越快。
					    direction可以控制跑馬燈的文字從哪裡出現
					    onmouseover可以設定滑鼠游標停留在跑馬燈上時要做的事情
					    onmouseleave可以設定滑鼠游標停離開跑馬燈後要做的事情
					    this.stop()是停止
					    this.start()是開始
					 -->
					<marquee scrollamount="5" direction="left" onmouseover="this.stop()" onmouseleave="this.start()">
						<%
							try
							{
								//Step1：載入Database Driver
								Class.forName("com.mysql.cj.jdbc.Driver");
								try
								{
									//Step2：建立連線
									String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
									String sql = "";
									boolean check = false;
									ResultSet temp;
									int count = 0;
									Connection con = DriverManager.getConnection(url, "root", "1234");

									if (con.isClosed())
									{
										out.println("連線失敗");
									}
									else
									{					
										//Step3：選擇要使用的資料庫
										sql = "use admarquee;";
										con.createStatement().execute(sql);
						
										//產生亂數
										Random ran = new Random();
										int adNumber = ran.nextInt(3)+1;

										//Step4：執行SQL指令
										sql = String.format("select * from adrand where ADID = '%d';", adNumber);
										temp = con.createStatement().executeQuery(sql);
						
										while(temp.next())
										{
											//Step5：顯示結果
											out.println(String.format("<a href=\"%s\" target=\"_blank\">", temp.getString(2)));
											out.println(String.format("%s</a>", temp.getString(3)));
										}
									}
					
									//Step6：關閉連線
									con.close();
								}
								catch(SQLException sExec)
								{
									out.println("SQL錯誤" + "<br>" + sExec.toString());
								}
							}
							catch(ClassNotFoundException err)
							{
								out.println("Class錯誤" + "<br>" + err.toString());
							}
						%>
					</marquee>
				</td>
			</tr>
		</table>
	</body>
</html>