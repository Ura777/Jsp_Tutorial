<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 留言板的處理頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>處理留言</title>
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
						sql = "use mydatabase;";
						con.createStatement().execute(sql);
						
						//從表格傳遞中文到資料庫，必須使用getBytes("ISO-8859-1")。
						String newName = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
						String newMail=request.getParameter("mail");
				        String newSubject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
				        String newContent=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
				        java.sql.Date newDate=new java.sql.Date(System.currentTimeMillis());
				        
						//Step4：執行SQL指令
						//執行查詢SQL時要用executeQuery()
						sql = String.format("insert guestbook (name, mail, subject, content, putdate) values ('%s', '%s', '%s', '%s', '%s')", newName, newMail, newSubject, newContent, newDate);
						out.println(sql);
						con.createStatement().execute(sql);
					}
					
					//Step6：關閉連線
					con.close();
					
					//Step5：顯示結果
					//直接顯示最新的留言
					response.sendRedirect("01-View.jsp?page=1");
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