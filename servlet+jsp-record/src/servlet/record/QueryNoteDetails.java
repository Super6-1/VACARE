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

import bean.record.stdvac;
import dao.record.RecordDetailsDao;
import dao.record.StdVacDao;



// 扩展 HttpServlet 类
@WebServlet (name = "QueryNoteDetails", urlPatterns = {"/QueryNoteDetails"})
public class QueryNoteDetails extends HttpServlet {
 
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
		  	//HttpSession session = request.getSession();
    		//Integer User_id = (Integer) session.getAttribute("id");
		  	Integer Note_id =  Integer.parseInt(request.getParameter("Note_id"));
		  	Integer state = Integer.parseInt(request.getParameter("state"));
			List list = dao.selectByNoteidandState(1, Note_id, state);

		    String CONTENT_TYPE = "application/json; charset=GBK";
		    response.setContentType(CONTENT_TYPE);
		    PrintWriter out = response.getWriter();
		    out.println(JSONArray.toJSONString(list));
			
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