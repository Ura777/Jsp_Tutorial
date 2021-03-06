<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 動態查詢的選項頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>隨機跑馬燈動態查詢的選項頁面</title>
	<body>
		<form action="11-SelectResult.jsp" method="post">
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
							sql = "use webdata;";
							con.createStatement().execute(sql);
						
							//Step4：執行SQL指令
							sql = "select Name from grades;";
							temp = con.createStatement().executeQuery(sql);
							
							//Step5：顯示結果
							out.println("<select size=\"1\" name=\"name\">");
							while(temp.next())
							{
								out.println(String.format("<option value=\"%s\">%s", temp.getString(1), temp.getString(1)));
								
							}
							out.println("</select>");
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
			<input type="submit" value="查詢成績">
		</form>
	</body>
</html>