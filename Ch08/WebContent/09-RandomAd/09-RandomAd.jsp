<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 隨機廣告 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>隨機廣告</title>
	</head>
	<body>
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
						sql = "use ad;";
						con.createStatement().execute(sql);
						
						//產生亂數
						Random ran = new Random();
						int adNumber = ran.nextInt(3)+1;

						//Step4：執行SQL指令
						sql = String.format("select * from randad where ADID = '%d';", adNumber);
						temp = con.createStatement().executeQuery(sql);
						
						while(temp.next())
						{
							//Step5：顯示結果
							out.println(String.format("<a href=\"%s\" target=\"_blank\">", temp.getString(4)));
							out.println(String.format("<img src=\"%s/%s\" alt=\"%s\">", temp.getString(2), temp.getString(3), temp.getString(5)));
							out.println("</a>");
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
		
	</body>
</html>