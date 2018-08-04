<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 刪除 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>刪除</title>
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
						//執行查詢SQL時可用executeUpdate()
						sql = "delete from list where product = 'grape';";
						
						//執行成功將會回傳異動的資料筆數
						//執行失敗將會回傳小於0的數字
						if (con.createStatement().executeUpdate(sql) > 0)
						{
							//Step5：顯示結果
							out.println("修改成功");
						}
						else
						{
							//Step5：顯示結果
							out.println("修改失敗");
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