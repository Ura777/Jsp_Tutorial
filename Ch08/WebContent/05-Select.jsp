<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 查詢 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>查詢</title>
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
						//執行查詢SQL時要用executeQuery()
						sql = "select * from list;";
						temp = con.createStatement().executeQuery(sql);
						
						//Step5：顯示結果
						//先印出資料欄位的名稱
						out.println("no product price putdate<p>");
						//一筆一筆讀取資料，如果回傳False，表示資料讀取完畢。
						while(temp.next())
						{
							//i代表資料表內的第幾個欄位
							for(int i=1; i<=4; i++)
							{
								out.println(temp.getString(i) + " ");
							}
							out.println("<p>");
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