package servlet.record;
//董嘉懿
import java.io.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.alibaba.fastjson.JSONArray;

import bean.record.stdvac;
import dao.record.RecordDao;

// 扩展 HttpServlet 类
@WebServlet (name = "AddRecord", urlPatterns = {"/AddRecord"})
public class AddRecord extends HttpServlet {
 
  private RecordDao dao = new RecordDao();
  
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
      		String name = request.getParameter("name");
      		String date = request.getParameter("date");
      		String text = request.getParameter("text");
      		String pic1 = request.getParameter("pic1");
      		String pic2 = request.getParameter("pic2");
      		String pic3 = request.getParameter("pic3");
      		String pic4 = request.getParameter("pic4");
      		
			int num = dao.getMaxNum(User_id, Note_id); 
			
			dao.addRecord(User_id,Note_id, ++num, name, date, text, pic1, pic2, pic3, pic4);
			 
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