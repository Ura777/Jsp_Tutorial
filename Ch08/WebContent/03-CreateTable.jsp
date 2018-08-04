<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 建立資料表 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>建立資料表</title>
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
						sql="create table list";
            			sql+="(no int(5) auto_increment,";
            			sql+="product varchar(30),";
            			sql+="price int(5),";
            			sql+="putdate date,";
            			sql+="primary key(no))";
            			con.createStatement().execute(sql);
            			
						//Step5：顯示結果
            			out.println("資料表list建立成功");
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