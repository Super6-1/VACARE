package servlet.maps;

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

import dao.mymapDao;

// ��չ HttpServlet ��
@WebServlet (name = "Querymap", urlPatterns = {"/Querymap"})
public class Querymap extends HttpServlet {
 
  private mymapDao dao = new mymapDao();


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
      		String dis = request.getParameter("country");
      		String type = request.getParameter("type");
      		String city=request.getParameter("city");
      		System.out.println("print:"+type);
			List list = dao.selectAll(type,dis);
			System.out.println(list);
			
			
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