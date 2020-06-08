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
@WebServlet (name = "AddVaccinePlan", urlPatterns = {"/AddVaccinePlan"})
public class AddVaccinePlan extends HttpServlet {
 
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
      		DateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
      		Calendar calendar = new GregorianCalendar(); 
      		HttpSession session = request.getSession();
      		Integer User_id = (Integer) session.getAttribute("id");
			
      		Integer Note_id = Integer.parseInt(request.getParameter("Note_id"));
      		String name = request.getParameter("name");
      		Integer dose = Integer.parseInt(request.getParameter("dose"));
      		String date = request.getParameter("date");
      		String batch = "";
			String site = "";
			String place = "";
			String remark = "";
      		
			int num = dao.getMaxNum(User_id, Note_id)+1; //User_id
			
			Date startdate = new java.sql.Date(format.parse(date).getTime()); 
			calendar.setTime(startdate);
			dao.addRecordDetails(User_id,Note_id, num, name, dose, format.format(calendar.getTime()) , batch, 0, site, place, remark);
			 
			 String CONTENT_TYPE = "application/json; charset=GBK";
			 response.setContentType(CONTENT_TYPE);
			 PrintWriter out = response.getWriter();
			 out.println(JSONArray.toJSONString(num));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
  public void destroy()
  {
      // 什么也不做
  }
}