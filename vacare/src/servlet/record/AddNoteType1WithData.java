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
import dao.record.NoteDao;
import dao.record.RecordDetailsDao;
import dao.record.StdVacDao;

// 扩展 HttpServlet 类
@WebServlet (name = "AddNoteType1WithData", urlPatterns = {"/AddNoteType1WithData"})
public class AddNoteType1WithData extends HttpServlet {
 
  private NoteDao notedao = new NoteDao();
  private RecordDetailsDao RDdao = new RecordDetailsDao();
  private StdVacDao SVdao = new StdVacDao();
  
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
      		String date = request.getParameter("date");
      		String pic = request.getParameter("pic");
      		
			int num = notedao.getMaxNum(1); 
			notedao.addType1(User_id, ++num, name, pic, date);//新增疫苗本
			
			 List<stdvac> list = SVdao.selectByNoteid(Note_id);//获取疫苗范本数据
			 
			 String batch = "";
			 String site = "";
			 String place = "";
			 for(stdvac l:list) {//增加待接种疫苗
				 Date startdate = new java.sql.Date(format.parse(date).getTime()); 
				 calendar.setTime(startdate); 
				 calendar.add(calendar.DATE, l.getInternal());
				 RDdao.addRecordDetails(User_id, num, l.getSta_id(), l.getName(), l.getDose(),format.format(calendar.getTime()) , batch, 0, site, place, l.getRemark());
			 }
			 
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

