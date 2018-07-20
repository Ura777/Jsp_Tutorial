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
## Ch03 - Html5
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


