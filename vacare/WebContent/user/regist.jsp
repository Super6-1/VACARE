<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Java Web</title>
</head>
<body>

	<%Connection conn=null;
  try
   {
      String uid=request.getParameter("username");
      String pwd=request.getParameter("password");

 	   Class.forName("com.mysql.jdbc.Driver");  
	   String url="jdbc:mysql://localhost/vacare";
     conn=DriverManager.getConnection(url,"root","123456");
       PreparedStatement st=conn.prepareStatement("insert into user values(?,?)");
      st.setString(1,uid);
      st.setString(2,pwd);
     
       int count=st.executeUpdate();       
      out.println("用户注册成功!  5秒钟后自动跳转到前界面。。。");
      response.setHeader("Refresh","5;URL=regist.html");
   }
  catch(Exception e)
  {
    out.println("用户注册时出现如下错误。。。");
     out.println(e.getMessage());
    
   }
   finally
  {
     conn.close();
   }
%>
</body>
</html>