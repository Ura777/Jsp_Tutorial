<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 更新會員資料 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>更新會員資料</title>
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
						
						//利用session來判斷是否已經登入
						if(session.getAttribute("id") != null)
						{
							//因為執行成功會回傳False，所以預設值為True。
							boolean checkUpdateID = true, checkUpdatePWD = true;
							//Step4：執行SQL指令
							//更新ID
							sql = String.format("update member set id = \"%s\" where id = \"%s\";", request.getParameter("id"), session.getAttribute("id"));
							checkUpdateID = con.createStatement().execute(sql);
							
							//更新PWD
							sql = String.format("update member set pwd = \"%s\" where id = \"%s\";", request.getParameter("pwd"), session.getAttribute("id"));
							checkUpdatePWD = con.createStatement().execute(sql);
							
							//根據checkUpdateID與checkUpdatePWD來判斷是否更新成功
							if(!checkUpdateID && !checkUpdatePWD)
							{
								out.println("更新成功！！！<p>");
								out.println("請<a href=\"03-User.jsp\">按此</a>返回會員頁面");
								
								//重新更新session，因為要考慮到帳號被修改的情況。
								session.setAttribute("id", request.getParameter("id"));
							}
							else
							{
								out.println("更新失敗！！！<p>");
								out.println("請<a href=\"03-User.jsp\">按此</a>返回會員頁面重新填寫");
							}
							
						}
						else
						{
							out.println("您尚未登入！！！<p>");
							out.println("請<a href=\"01-SignIn.jsp\">按此</a>登入");
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