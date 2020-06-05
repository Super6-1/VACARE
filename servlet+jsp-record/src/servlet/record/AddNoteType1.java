package servlet.record;

import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.record.NoteDao;


// 扩展 HttpServlet 类
@WebServlet (name = "AddNoteType1", urlPatterns = {"/AddNoteType1"})
public class AddNoteType1 extends HttpServlet {
 
  private NoteDao dao = new NoteDao();
  
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
      	try {
      		//HttpSession session = request.getSession();
      		//Integer User_id = (Integer) session.getAttribute("id");
			
      		String name = request.getParameter("name");
      		String date = request.getParameter("date");
      		String pic = request.getParameter("pic");
      		
			int num = dao.getMaxNum(1); //User_id
			dao.addType1(1, ++num, name, pic, date);
			
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

