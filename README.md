# Jsp_Tutorial
## 目錄
* [環境設置](https://github.com/Ura777/Jsp_Tutorial#%E7%92%B0%E5%A2%83%E8%A8%AD%E7%BD%AE)
* [Java環境變數設置](https://github.com/Ura777/Jsp_Tutorial#java%E7%92%B0%E5%A2%83%E8%AE%8A%E6%95%B8%E8%A8%AD%E7%BD%AE)
* [MySQL安裝設定](https://github.com/Ura777/Jsp_Tutorial#mysql%E5%AE%89%E8%A3%9D%E8%A8%AD%E5%AE%9A)
* [放置MySQL Connector](https://github.com/Ura777/Jsp_Tutorial#%E6%94%BE%E7%BD%AEmysql-connector)
* [Eclipse相關設定](https://github.com/Ura777/Jsp_Tutorial#eclipse%E7%9B%B8%E9%97%9C%E8%A8%AD%E5%AE%9A)
* [Eclipse相關操作](https://github.com/Ura777/Jsp_Tutorial#eclipse%E7%9B%B8%E9%97%9C%E6%93%8D%E4%BD%9C)
* [課程介紹](https://github.com/Ura777/Jsp_Tutorial#%E8%AA%B2%E7%A8%8B%E4%BB%8B%E7%B4%B9)
  * [Ch01 - 靜態網頁、動態網頁](https://github.com/Ura777/Jsp_Tutorial#ch01---%E9%9D%9C%E6%85%8B%E7%B6%B2%E9%A0%81%E5%8B%95%E6%85%8B%E7%B6%B2%E9%A0%81)
  * [Ch02 - Tomcat的管理](https://github.com/Ura777/Jsp_Tutorial#ch02---tomcat%E7%9A%84%E7%AE%A1%E7%90%86)
  * [Ch03 - Html5、CSS](https://github.com/Ura777/Jsp_Tutorial#ch03---html5css)
  * [Ch04 - JSP、Java](https://github.com/Ura777/Jsp_Tutorial#ch04---jspjava)
  * [Ch05 - 隱含物件](https://github.com/Ura777/Jsp_Tutorial#ch05---%E9%9A%B1%E5%90%AB%E7%89%A9%E4%BB%B6)
  * [Ch06 - 表單](https://github.com/Ura777/Jsp_Tutorial#ch06---%E8%A1%A8%E5%96%AE)
  * [Ch07 - SQL](https://github.com/Ura777/Jsp_Tutorial#ch07---sql)
  * [Ch08 - Ch08 - JSP與MySQL的整合](https://github.com/Ura777/Jsp_Tutorial#ch08---jsp%E8%88%87mysql%E7%9A%84%E6%95%B4%E5%90%88)
* * *
## 環境設置
* 作業系統 = Windows 7
* JDK版本 = [1.8.0_171](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* Eclipse版本 = [Eclipse IDE for Java EE Developers最新版本](http://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/photonr)
* Apache Tomcat版本 = [9.0.8](https://tomcat.apache.org/download-90.cgi)
* MySQL版本 = [Community Installer 8.0.11](https://dev.mysql.com/downloads/installer/)
* MySQL Workbench版本 = [6.3.10](https://dev.mysql.com/downloads/workbench/)
* MySQL Connector Java版本 = [8.0.11](https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.11.zip)
* * *
## Java環境變數設置
* 取得並複製JDK安裝路徑  
 
        路徑通常為：  
		C:\Program Files\Java\jdk1.8.0_162
 
* 控制台 &gt; 所有控制台項目 &gt; 系統 &gt; 點選右邊的進階系統設定 &gt; 點選上方的進階標籤 &gt; 環境變數
* 在Administrator的使用者變數(U)區塊中點選新增按鈕，根據對應的欄位輸入以下的資料：  
 
    | 欄位名稱      | 輸入內容                            |
    |:-------------:|:-----------------------------------:|
    | 變數名稱(N)   | JAVA_HOME                           |
    | 變數值(V)     | C:\Program Files\Java\jdk1.8.0_162  |
 
* 在系統變數(S)的區塊中點選變數名稱為Path的選項 &gt; 點選編輯按鈕
* 按下鍵盤的右方向鍵 &gt; 輸入分號 &gt; 輸入以下內容：  
 
        %JAVA_HOME%\bin;
 
* 輸入完之後，一直按下確定按鈕。
* 打開命令提示字元視窗，輸入以下指令後按下Enter：  
 
        java
 
* 出現列表Java的功能列表，代表環境變數設置成功。
* * *
## MySQL安裝設定
* 選擇Server only
* 在Gropu Replication步驟中選擇第1個選項：Standalone MySQL Server/Classic MySQL Replication
* 在Type and Networking步驟中將最下方的Show Advanced Options打勾
* 在Authentication Method步驟中選擇第2個選項：Use Legacy Authentication Method(Retain MySQL 5.x Compatibility)
* 在Account and Roles步驟中輸入自訂的密碼
  * 此時是在設置帳號root的密碼
* * *
## 放置MySQL Connector
* 安裝好Apache Tomcat
* 將下載下來的mysql-connector-java-8.0.11.zip解壓縮
* 點擊解壓縮後的mysql-connector-java-8.0.11資料夾
* 複製mysql-connector-java-8.0.11.jar
* 進入Apache Tomcat的lib資料夾
 
        路徑通常為：  
		C:\Program Files\Apache Software Foundation\Tomcat 9.0\lib
 
* 貼上剛才所複製的mysql-connector-java-8.0.11.jar
* * *
## Eclipse相關設定
* 更改編碼
  * 上方選單點選Window &gt; Preferences &gt; General &gt; Workspace
  * 最下方的Texfile encoding區塊點選Other &gt; 選擇UTF-8 &gt; 按下Apply and Close按鈕
* 更改字體大小
  * 上方選單點選Window &gt; Preferences &gt; General &gt; Appearance &gt; Color and Font
  * 右邊視窗點選Basic &gt; Text Font &gt; 點選右邊的Edit按鈕
  * 修改完成後點選Apply and Close按鈕
* 設定顯示網頁的瀏覽器
  * 上方選單點選Window &gt; Web Browser &gt; 點選1 Default system web browser
* * *
## Eclipse相關操作
* 建立Apache Tomcat的伺服器實體
  * 上方選單點選Window &gt; Preferences &gt; Server &gt; Runtime Environments &gt; 點選Add按鈕
  * 選擇Apache Tomcat v9.0 &gt; 點選next按鈕 &gt; 點選Browse...按鈕 &gt; 選擇Apache-Tomcat安裝的路徑
 
        路徑通常為：  
		C:\Program Files\Apache Software Foundation\Tomcat 9.0
 
  * 點選JRE:下方的下拉式選單 &gt; 選擇已經安裝好的JRE &gt; 點選Finish按鈕
* 建立動態網頁專案(Dynamic Web Project)
  * 在Eclipse右邊的Project Explorer點擊滑鼠右鍵 &gt; New &gt; 點擊Dynamic Web Project選項
  * 在Project name:旁輸入專案名稱
  * Target runtime選擇剛才建立好的Apache Tomcat v9.0
  * Dynamic web module version選擇4.0
  * Configuration選擇Deafult Configuration for Apache Tomcat v9.0 &gt; 按下Next按鈕
  * 在Web Module步驟中勾選最下方的Generate web.xml deployment descriptor選項 &gt; 按下Finish按鈕
* 加入第1個JSP檔案
  * 在Project Explorer展開剛才建立好的專案 &gt; 展開 WebContent
  * 對著WebContent點擊右鍵 &gt; New &gt; 點擊JSP File
  * 在File name:旁輸入檔案名稱
 
        例如： 
		Test.jsp
 
  * 點擊Next按鈕 &gt; 在Select JSP Template步驟選擇Name為New JSP File(html5)的選項 &gt; 點選Finish按鈕
* 第1次執行
  * 對著剛才新增好的JSP檔案點擊右鍵 &gt; Run As &gt; 點擊1 Run On Server選項
  * 在How do you want to select the server?區塊中選擇第1個選項：Choose an existing server
  * 在Select the server that you want to use:區塊中選擇Tomcat v9.0 Server at localhost
  * 勾選最下方的Always use this server when running this project
  * 按下Finish按鈕
* 停止伺服器
  * 在Eclipse下方視窗中點選Servers標籤
  * 點選Tomcat v9.0 Server at localhost &gt; 點選該視窗中最右上角的紅色正方形按鈕
* * *
## 課程介紹
## Ch01 - 靜態網頁、動態網頁
* 靜態網頁
* 動態網頁
  * 在客戶端(Client)上執行
    * JavaScript
  * 在伺服器端(Server)上執行
    * JSP
* * *
## Ch02 - Tomcat的管理
* 更改通訊埠
  * 去安裝Tomcat的路徑中尋找server.xml
 
        路徑通常為：  
		C:\Program Files\Apache Software Foundation\Tomcat 9.0\conf\server.xml
 
  * 使用文字編輯器開啟server.xml &gt; 尋找以下的程式碼：
 
        <Connector port="8080" protocol="HTTP/1.1"  
               connectionTimeout="20000"  
               redirectPort="8443" /> 
 
  * 將8080改成想要設定的數字
 
        例如：
		80
 
  * 修改完成後儲存檔案 &gt; 重新啟動Tomcat
* 虛擬資料夾與真實資料夾的對應
  * 去安裝Tomcat的路徑中尋找server.xml
 
        路徑通常為：  
		C:\Program Files\Apache Software Foundation\Tomcat 9.0\conf\server.xml
 
  * 使用文字編輯器開啟server.xml &gt; 尋找以下的程式碼：
 
        <Host name="localhost"  appBase="webapps"  
            unpackWARs="true" autoDeploy="true">
 
  * 在上述的程式碼下方新增以下的程式碼：
 
        <Context path="/虛擬資料夾名稱" docBase = "實體資料夾位置" debug="0" />  
		  
		例如：  
		<Context path="/test" docBase = "C:\Jsp_Tutorial" debug="0" />
 
  * 修改完成後儲存檔案 &gt; 重新啟動Tomcat
  * 虛擬資料夾與實體資料夾的名稱都不能有中文字
* * *
## Ch03 - Html5、CSS
* 基本的Html5架構
* 常用的Html5標籤
  * &lt;table&gt;
  * &lt;body&gt;
  * &lt;img&gt;
  * &lt;a&gt;
  * &lt;frameset&gt;
    * 視窗框架
	* Html5不支援
  * &lt;iframe&gt;
    * 內部視窗
  * &lt;meta&gt;
  * &lt;marquee&gt;
    * 跑馬燈
* CSS
* * *
## Ch04 - JSP、Java
* 第1個JSP
  * Hello World!!!
* 跳脫字元
  * 程式的換行 = \n
  * 網頁的換行 = <br>
* 變數
* 邏輯運算
  * And = &&
  * Or = ||
  * Xor = ^
* 選擇性結構
  * if
  * if-else
  * if-else if
  * 巢狀if
  * switch-case
* 迴圈
  * for
  * while
  * do-while
  * break
  * continue
* 在Html的標籤中使用JSP的變數
  * 實作每日一句
  * 實作九九乘法表
* 陣列
  * 1維
  * 2維
* 方法(Method)
  * 自訂方法
* 引入檔案
* 亂數類別的使用
  * 實作隨機廣告
* * *
## Ch05 - 隱含物件
* 運算值
  * &lt;%= 變數名稱 %&gt;
* request物件
* response物件
* application物件
  * 實作來訪人數計數器
* session物件
* * *
## Ch06 - 表單
* Form
* 常用的表單元件
  * Textbox
    * text
	* passowrd
  * Radio Button
  * Checkbox
  * Dropdown List
  * Textarea
  * Button
    * submit
	* reset
* 表單的傳送方式
  * get
  * post
* 使用JSP接收與處理表單
* Cookie
* * *
## Ch07 - SQL
* 資料定義語言(DDL)
  * 建立資料庫或資料表
	* create
 
        建立資料庫：
		create database mydatabase;  
		  
		建立資料表：
		create table product(id int(10) not null auto_increment, name varchar(10) not null default"", price int(5));
 
  * 移除資料庫或資料表
    * drop
 
        移除資料表：
		drop table product;
 
  * 修改資料庫或資料表
    * alter
  * 使用資料庫或資料表
    * use
 
        使用資料庫：
		use database mydatabase;
 
* 插入資料
  * insert-values
 
        例如：
		insert product(id, name, price) values ("1", "apple", "10");
 
* 查詢資料
  * 一般查詢
    * select-from
 
        查詢所有欄位的資料：
		select * from product;  
		  
		查詢特定欄位的資料：
		select id, name form product;
 
  * 帶有條件的查詢
    * select-from-where
 
        例如：
		select * from product where price="10";
 
  * 範圍限定的查詢
    * between-and
 
        例如：
		select * from product where price between "10" and "50";
 
  * 模糊比對的查詢
    * like
	  * 表示任何長度的字元：%
	  * 表示長度為1的字元：_
 
        尋找開頭為a的產品資料：
		select * from product where name like "a%";  
		  
		尋找第2個字母為p的產品資料：  
		select * from product where name like "_p%";
 
  * 分群查詢
    * group by
 
        顯示出各個班級的平均分數：
		select classname, avg(score) as avg_score from student group by classname;
 
  * 關聯資料表查詢
    * 一般
 
        例如：
		select * from student as t1, studentaddress as t2 where t1.id=t2.id;
 
    * Left join
	  * 指令：left-join-on
 
        例如：
		select * from student as t1 left join studentaddress as t2 on t1.id=t2.id;
 
    * Inner Join
	  * 指令：inner-join-on
 
        例如：
		select * from student as t1 inner join studentaddress as t2 on t1.id=t2.id;
 
* 更新資料
  * update-set-where
 
        例如：
		update product set price="20" where name="apple";
 
* 刪除資料
  * delete from-where
 
        例如：
		delete from product where id="1";  
		  
		刪除全部資料：
		delete from product;
 
* 虛擬欄位
  * as
 
        將查詢出來的price欄位名稱改為sale_price：
		select price as sale_price form product;
 
* 虛擬資料集
 
        例如：
		select id, name from(select id, name, price from product);
 
* 資料的排序
  * order by
    * 預設為遞增排序
	* 遞增排序：asc
	* 遞減排序：desc
 
        依照產品價格遞減排序：
		select * from product order by price desc;
 
* 運算式
  * 邏輯運算子
    * and 
	* or
  * 比較運算子
    * &gt;
	* &lt;
	* =
	* !=
* 不顯示重複的欄位值
  * distinct
 
        例如：
		select distinct name from product;
 
* 計算函數
  * 計算特定欄位的記錄筆數：count()
  * 計算特定欄位的最大值：max()
  * 計算特定欄位的最小值：min()
  * 計算特定欄位所有值的加總：sum()
  * 計算特定欄位所有值的平均：avg()
 
        加總price欄位：
		select sum(price) as sum_price from product;
 
* * *
## Ch08 - JSP與MySQL的整合
* 連結步驟
  * Step0：Import Library
 
        於JSP頁面中加入以下程式碼：
		<%@ page import="java.sql.*"%>
 
  * Step1：載入資料庫驅動程式
 
        資料庫驅動程式名稱為：
		com.mysql.cj.jdbc.Driver
 
  * Step2：建立連線
 
        建立連線時的網址為：
		jdbc:mysql://localhost/?serverTimezone=UTC
 
  * Step3：選擇資料庫
  * Step4：執行SQL指令
  * Step5：顯示結果
  * Step6：關閉連線
* 使用JSP建立連線
* 使用JSP建立資料庫
* 使用JSP建立資料表
* 使用JSP新增記錄至資料表
* 使用JSP查詢資料表
* 使用JSP更新資料表內的記錄
* 使用JSP刪除資料表內的記錄
* 留言版的實作
  * guestbook.sql
    * 請先在MySQL中建立名稱為mydatabase的資料庫
    * 在資料庫mydatabase中執行此sql檔案
  * 01-View.jsp
    * 1個網頁只能夠顯示5筆留言
	* 會有超連結直接連到特定的頁數
	* 會有一個超連結提供使用者到02-Board.jsp填寫留言
  * 02-Board.jsp
    * 會有一個超連結提供使用者查看留言
    * 使用者按確定後會執行新增留言的功能(03-Add.jsp)
  * 03-Add.jsp
    * 將留言的相關資料儲存至資料庫
	* 轉向到顯示留言01-View.jsp
* 隨機廣告的實作
  * randad.sql
    * 請先在MySQL中建立名稱為ad的資料庫
    * 在資料庫mydatabase中執行此sql檔案
* 隨機跑馬燈的實作
  * adrand.sql
    * 請先在MySQL中建立名稱為admarquee的資料庫
    * 在資料庫mydatabase中執行此sql檔案
* 下拉式選單之動態查詢的實作
  * grades.sql
    * 請先在MySQL中建立名稱為webdata的資料庫
    * 在資料庫mydatabase中執行此sql檔案
  * 11-SelectForm.jsp
    * 根據資料庫內的姓名資料來產生下拉式選單，提供給使用者選擇想要查詢的對象。
  * 11-SelectResult.jsp
    * 顯示使用者要查詢的內容
* 預防SQL Injection
  * 使用PreparedStatement類別來取代直接將使用者的輸入串接在SQL指令的where後方
  * member.sql
    * 請先在MySQL中建立名稱為member的資料庫
    * 在資料庫mydatabase中執行此sql檔案
  * 01-SignIn.jsp
    * 登入頁面
  * 02-Check.jsp
    * 檢查登入的帳號密碼
	* 使用PreparedStatement類別
	* 帳號密碼正確時會將帳號儲存在session當中
  * 03-User.jsp
    * 會員頁面
	* 提供給使用者可以修改帳號密碼
	* 利用session判斷使用者是否已經登入
  * 04-Update.jsp
    * 更新帳號密碼
	* 考慮到使用者可能會更新帳號的情況，session也要進行更新。
  * 05-SignOut.jsp
    * 登出頁面
	* 清除session
* * *


