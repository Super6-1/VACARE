package servlet.record;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.text.html.HTMLDocument.Iterator;

import com.alibaba.fastjson.JSONArray;


@WebServlet (name = "UploadImage", urlPatterns = {"/UploadImage"})
@MultipartConfig
public class UploadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
  		Integer User_id = (Integer) session.getAttribute("id");
		Part part = request.getPart("file");//获取文件

		try {

		String savePath = request.getServletContext().getRealPath("/");
		savePath = savePath.substring(0, savePath.length() - 1);
		savePath = savePath.substring(0, savePath.lastIndexOf("\\"));
		savePath = savePath.substring(0, savePath.lastIndexOf("\\"))+"/webapps/uploadFiles";
		File uploadFileDir = new File(getServletContext().getRealPath("/uploadFiles"));
		File searchFileDir = new File(savePath);
		if(!uploadFileDir.exists()) {
			uploadFileDir.mkdir();
		}
		
		if(!searchFileDir.exists()) {
			searchFileDir.mkdir();
		}
		
		String fileName = part.getSubmittedFileName();//直接获取文件名, tomcat8.0以上

		Timestamp t = new Timestamp(System.currentTimeMillis());
		String result = User_id+"-"+ t.getTime()+"-"+fileName;
		HashMap<String, Object> map=new HashMap<String, Object>();
		
		if(fileName != null) {
			//上传到服务器
			part.write(uploadFileDir + "/" + result);
			File searchFile = new File(searchFileDir + "/" + result);
			File target = new File(uploadFileDir +"/" + result);
			Files.copy(target.toPath(), searchFile.toPath());
			
			HashMap<String, Object> data=new HashMap<String, Object>();
			data.put("src", "uploadFiles" + "/" + result);
			map.put("code", 0);
			map.put("status", 1);
			map.put("msg", "上传成功");
			map.put("data", data);
		}
		else {
		map.put("code", 0);
		map.put("status", 0);
		map.put("msg", "上传失败");		
		}
		
		String CONTENT_TYPE = "application/json; charset=GBK";
		 response.setContentType(CONTENT_TYPE);
		 PrintWriter out = response.getWriter();
		 out.println(JSONArray.toJSONString(map));
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
}		
	

