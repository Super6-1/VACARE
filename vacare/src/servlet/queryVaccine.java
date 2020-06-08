package servlet;
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

import bean.vaccine;
import dao.VaccineDao;
import com.alibaba.fastjson.JSONArray;

// 扩展 HttpServlet 类
@WebServlet (name = "QueryVaccine", urlPatterns = {"/QueryVaccine"})
public class queryVaccine extends HttpServlet {
 
  private VaccineDao dao = new VaccineDao();


  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
	  String V = request.getParameter("vaccine");
	  String Vaccine_id = "%";
	  
 	 if(V!=null){
 		 for(int i=0;i< V.length();i++) {
 			 Vaccine_id=Vaccine_id+V.charAt(i)+"%";
 			 }
	       }
	     else Vaccine_id="%%";
 	 
 	System.out.println("用户名" + Vaccine_id);
 	String name = java.net.URLEncoder.encode(Vaccine_id, "UTF-8");
   	response.sendRedirect("detail1.jsp?name="+name);
      // 设置响应内容类型
     // response.setContentType("text/html");
      // 实际的逻辑是在这里
      //PrintWriter out = response.getWriter();
      //out.println("<h1>get method invalid！</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	  request.setCharacterEncoding("UTF-8");
	  String Vaccine_id = request.getParameter("name");
	  String name = java.net.URLDecoder.decode(Vaccine_id, "UTF-8");

	   	try {
				List<vaccine> list = dao.queryVaccine(name);
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