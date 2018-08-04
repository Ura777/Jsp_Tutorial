<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- 留言板的觀看頁面 -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>留言板</title>
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
						
						//Step4：執行SQL指令
						//執行查詢SQL時要用executeQuery()
						sql = "select * from guestbook;";
						temp = con.createStatement().executeQuery(sql);
						
						//Step5：顯示結果
						//計算留言總筆數
						//先移到檔尾，使用getRow()後，就可知道共有幾筆記錄。
						temp.last();
						int totalContent = temp.getRow();
						out.println(String.format("共有%d筆留言 <a href=\"02-Board.jsp\">我要留言</a><p>", totalContent));
						
						//Step5：顯示結果
						//顯示頁碼
						//每頁顯示5筆，算出共幾頁。
						//Math.ceil()為無條件進位
						int pageNumber = (int)Math.ceil((double)totalContent/5.0);
						out.println("請選擇頁數");
						//使用超連結方式，呼叫自己，使用get方式傳遞參數，變數名稱為page。
						for(int i=1; i<=pageNumber; i++)
						{
							out.println(String.format("<a href=\"01-View.jsp?page=%d\">%d</a>&nbsp;", i, i));
						}
						out.println("<p>");
						
						//Step5：顯示結果
						//讀取page變數
						String pageString = request.getParameter("page");
						if (pageString == null)
						{
							pageString = "0";
						}
						//若未指定page，令currentPage為1。
						int currentPage = Integer.valueOf(pageString);
						if (currentPage == 0)
						{
							currentPage = 1;
						}
						
						//Step4：執行SQL指令
						//計算開始記錄位置
						int startRecord = (currentPage-1)*5;
						//遞減排序，讓最新的資料排在最前面。
						sql = String.format("select * from guestbook order by no desc limit %d,5;", startRecord);
						temp = con.createStatement().executeQuery(sql);
						
						//Step5：顯示結果
						while(temp.next())
						{
							out.println(String.format("留言主題：%s<br>", temp.getString(4)));
							out.println(String.format("訪客姓名：%s<br>", temp.getString(2)));
							out.println(String.format("E-mail：%s<br>", temp.getString(3)));
							out.println(String.format("留言內容：%s<br>", temp.getString(5)));
							out.println(String.format("留言時間：%s<p>", temp.getString(6)));
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