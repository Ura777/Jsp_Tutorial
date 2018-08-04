<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 連接MySQL -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>連接MySQL</title>
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
					
					//測試連線是否成功
					if (con.isClosed())
					{
						//Step5：顯示結果
						out.println("連線失敗");
					}
					else
					{
						//Step5：顯示結果
						out.println("連線成功");

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