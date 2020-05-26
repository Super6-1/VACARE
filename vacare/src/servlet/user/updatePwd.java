package servlet.user;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.user;
import dao.UserDao;
import com.alibaba.fastjson.JSONArray;

// 扩展 HttpServlet 类
public class updatePwd extends HttpServlet {
 
  private UserDao dao = new UserDao();


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
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	  //HttpSession session = request.getSession();
	  //Integer user_id = (Integer) session.getAttribute("id");
	  
	  int user_id = Integer.parseInt(request.getParameter("user_id"));
	  String password = request.getParameter("password");

      	try {
      		dao.updatePwd(user_id,password);			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
  public void destroy()
  {
      // 什么也不做
  }
}