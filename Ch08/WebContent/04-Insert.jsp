<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 新增1筆資料 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>新增1筆資料</title>
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
						sql = "use store;";
						con.createStatement().execute(sql);
						
						//Step4：執行SQL指令
						sql = "insert list(no, product, price, putdate) values ('1', 'apple', '10', '2018/08/04');";
							
						//執行成功時回傳Flase
						if(!con.createStatement().execute(sql))
						{
							//Step5：顯示結果
							out.println("新增成功");
						}
						else
						{
							//Step5：顯示結果
							out.println("新增失敗");
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