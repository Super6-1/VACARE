
package servlet.record;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.alibaba.fastjson.JSONArray;

import dao.record.RecordDetailsDao;


// 扩展 HttpServlet 类
@WebServlet (name = "CutRecordDetail", urlPatterns = {"/CutRecordDetail"})
public class CutRecordDetail extends HttpServlet {
 
  private RecordDetailsDao dao = new RecordDetailsDao();


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
      		HttpSession session = request.getSession();
      		Integer User_id = (Integer) session.getAttribute("id");

      		Integer Note_id = Integer.parseInt(request.getParameter("Note_id"));
      		Integer RecordDetails_id = Integer.parseInt(request.getParameter("RecordDetails_id"));
			dao.delete(User_id, Note_id, RecordDetails_id);
						
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