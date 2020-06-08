package servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.user;

//扩展 HttpServlet 类
@WebServlet (name = "exit", urlPatterns = {"/exit"})
public class exit extends HttpServlet {


	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	            throws ServletException, IOException
	  {
		  HttpSession session = request.getSession(true);
	      
	      session.removeAttribute("id");
	      String ctxPath = request.getContextPath();
		  response.sendRedirect(ctxPath + "/index.jsp");

	  }
	  
	  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	      
	  }
	  
	  public void destroy()
	  {
	      // 什么也不做
	  }
}
