<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 會員頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>會員頁面</title>
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
							String id="", pwd="";
							
							//Step4：執行SQL指令
							sql = String.format("select * from member where id = \"%s\";", session.getAttribute("id"));
							temp = con.createStatement().executeQuery(sql);
							
							while(temp.next())
							{
								id = temp.getString("id");
								pwd = temp.getString("pwd");
							}
		%>
							<!-- Step5：顯示結果 -->
							哈囉，會員<%=id%>，這裡可以<a href='05-SignOut.jsp'>登出</a>。
							<p>
							請修改會員資料：
							<p>
							<form action="04-Update.jsp" method="POST">
								您的帳號：<input type="text" name="id" value="<%=id%>">
								<p>
								您的密碼：<input type="password" name="pwd" value="<%=pwd%>">
								<p>
								<input type="submit" name="submit" value="更新資料">
								<input type="reset" name="reset" value="重新填寫">
							</form>
		<%
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