package servlet.record;

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
import dao.record.NoteDao;
import dao.record.RecordDetailsDao;
import dao.record.StdVacDao;

// 扩展 HttpServlet 类
@WebServlet (name = "AddNoteType2", urlPatterns = {"/AddNoteType2"})
public class AddNoteType2 extends HttpServlet {
 
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
			dao.addType2(1, ++num, name, pic, date);
			
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

