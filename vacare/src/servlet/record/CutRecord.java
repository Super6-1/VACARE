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

import dao.record.NoteDao;
import dao.record.RecordDao;

// ��չ HttpServlet ��
@WebServlet (name = "CutRecord", urlPatterns = {"/CutRecord"})
public class CutRecord extends HttpServlet {
 
  private RecordDao dao = new RecordDao();


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
      	try {
      		HttpSession session = request.getSession();
      		Integer User_id = (Integer) session.getAttribute("id");
			System.out.println(111);
      		Integer Note_id = Integer.parseInt(request.getParameter("Note_id"));
      		Integer Record_id = Integer.parseInt(request.getParameter("Record_id"));
			dao.delete(User_id, Note_id, Record_id);
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
  public void destroy()
  {
      // ʲôҲ����
  }
}