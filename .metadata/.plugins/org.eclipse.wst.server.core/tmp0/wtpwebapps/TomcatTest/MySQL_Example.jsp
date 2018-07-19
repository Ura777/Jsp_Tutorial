<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>我在連接MySQL</title></head>
	<body>
		<%
			try
			{
				//載入Database Driver
				Class.forName("com.mysql.cj.jdbc.Driver");
				try
				{
					//Bulid Connection
					String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
					String sql = "";
					boolean check = false;
					ResultSet temp;
					int count = 0;
					Connection con = DriverManager.getConnection(url, "root", "1234");
					
					//測試是否連線成功
					if (con.isClosed())
					{
						out.print("連線失敗");
					}
					else
					{
						//建立Datebase
						//sql = "create database store";
						//con.createStatement().execute(sql);
						
						//選擇Database
						sql = "use store";
						con.createStatement().execute(sql);
						
						//執行SQL指令：建立Table
						//sql = "create table list(no int(5) auto_increment,product varchar(30),price int(5), putdate date, primary key(no))";
						//con.createStatement().execute(sql);
						
						//執行SQL指令：新增資料至Table
						//sql = "insert list(no,product,price,putdate) values ('0001','Apple','10','2015/12/20')";
						//con.createStatement().execute(sql);
						
						//執行SQL指令：查詢資料
						sql = "select no,product,price,putdate from list";
						temp = con.createStatement().executeQuery(sql);
						//利用迴圈印出每筆資料
						while(temp.next())
						{
							for (int i=1; i<=4; i++)
							{
								//getString(1)代表no欄位內的值、getString(2)代表product欄位內的值...依此類推
								out.print(temp.getString(i) + " ");
							}
							out.print("<br>" + "-------------------------------------------------------" + "<br>");
						}
					
					
						//執行SQL指令：修改資料
					//	sql = "update list set price='1000' where no = '001'";
					//	count = con.createStatement().executeUpdate(sql);
					/*	if (count>0)
						{
								out.print("修改成功" + "<br>" + "經過修改的資料共有 " + count + " 筆");
						}
					*/	
						//執行SQL指令：刪除資料
					//	sql = "delete from list where no = '003'";
					//	count = con.createStatement().executeUpdate(sql);
					/*	if (count>0)
						{
							out.print("修改成功" + "<br>" + "經過刪除的資料共有 " + count + " 筆");
						}
						else
						{
							out.print("修改失敗");
						}
					*/

						
						
						
					}
					con.close();
				}
				catch(SQLException sExec)
				{
					out.print("SQL錯誤" + "<br>" + sExec.toString());
				}
			}
			catch(ClassNotFoundException err)
			{
				out.print("Class錯誤" + "<br>" + err.toString());
			}
		%>
		
	</body>
</html>