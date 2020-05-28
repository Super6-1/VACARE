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

import dao.record.StdVacDao;

// ��չ HttpServlet ��
@WebServlet (name = "QueryStdVac", urlPatterns = {"/QueryStdVac"})
public class QueryStdVac extends HttpServlet {
 
  private StdVacDao dao = new StdVacDao();


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
      		//HttpSession session = request.getSession();
      		//Integer id = (Integer) session.getAttribute("id");
			Integer Note_id = null;
			List list = dao.selectByNoteid(Note_id);
			
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
      // ʲôҲ����
  }
}