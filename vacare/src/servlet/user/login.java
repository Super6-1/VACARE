package servlet.user;
import java.io.*;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import bean.user;
import dao.UserDao;


//��չ HttpServlet ��
@WebServlet (name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
 
  private UserDao dao = new UserDao();


  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // ������Ӧ��������
      response.setContentType("text/html");

      // ʵ�ʵ��߼���������
      PrintWriter out = response.getWriter();
      out.println("<h1>get method invalid��</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	  request.setCharacterEncoding("UTF-8");
      String Name = request.getParameter("Name");
      String Password = request.getParameter("Password");
      System.out.println(Name);
      HttpSession session = request.getSession(true);
      
      try {
          user u = dao.QuerybyName(Name);
          
          PrintWriter out = response.getWriter();
          if(u.getPassword().equals(Password)) {
        	  out.println("123");
        	  session.setAttribute("id", u.getUser_id());
          }
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  }
  
  public void destroy()
  {
      // ʲôҲ����
  }
}