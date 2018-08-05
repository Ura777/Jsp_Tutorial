<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 檢查登入的帳號密碼 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>檢查登入的帳號密碼</title>
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
						sql = "use member;";
						con.createStatement().execute(sql);
						
						//帳號密碼都必須要輸入
						if(request.getParameter("id")!=null && request.getParameter("pwd")!=null)
						{
							//為了防止SQL Injection，必須使用PreparedStatement。
							sql = "select * from member where id = ? and pwd = ?;";
							PreparedStatement pstmt = con.prepareStatement(sql);
							pstmt.setString(1, request.getParameter("id"));
							pstmt.setString(2, request.getParameter("pwd"));
							
							//Step4：執行SQL指令
							//這邊要使用PreparedStatement的executeQuery()執行SQL指令
							temp = pstmt.executeQuery();
							
							if(temp.next())
							{
								session.setAttribute("id", request.getParameter("id"));
								response.sendRedirect("03-User.jsp");
							}
							else
							{
								out.println("密碼帳號不符！！！<p>");
								out.println("<a href=\"01-SignIn.jsp\">按此</a>重新登入");
							}
						}
						else
						{
							out.println("密碼與帳號接不能為空白！！！<p>");
							out.println("<a href=\"01-SignIn.jsp\">按此</a>重新輸入");
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