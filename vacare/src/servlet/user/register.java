package servlet.user;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

import bean.user;
import dao.UserDao;

// 扩展 HttpServlet 类
@WebServlet (name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {
 
  UserDao dao = new UserDao();
  public void init() throws ServletException
  {
  }

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // 设置响应内容类型
      response.setContentType("text/html");

      // 实际的逻辑是在这里
      PrintWriter out = response.getWriter();
      out.println("<h1>get method invalid！</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
	  request.setCharacterEncoding("UTF-8");
      String name = request.getParameter("username");
      String password = request.getParameter("password");
      System.out.println(name);
      try {
		user u = dao.QuerybyName(name);
		System.out.println(u);
		if(u != null) {//已存在用户
		}else {
			dao.add(name, password);
	    	PrintWriter out = response.getWriter();
	      	out.println("123");
		}
      }
      catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
  }
  public void destroy()
  {
  
  }
}
