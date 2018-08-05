<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 動態查詢的結果頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>動態查詢的結果頁面</title>
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
						sql = "use webdata;";
						con.createStatement().execute(sql);
						
						//Step4：執行SQL指令
						String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
						sql = String.format("select * from grades where name = '%s';", name);
						temp = con.createStatement().executeQuery(sql);
						
						//Step5：顯示結果
						if(temp.next())
						{
		%>
							<font color="blue" size="5"><%=temp.getString(2)%>的成績如下：</font><p>  
              				國文：<%=temp.getString(3)%><br>
              				英文：<%=temp.getString(4)%><br>
             				 數學：<%=temp.getString(5)%><p>
		<%
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