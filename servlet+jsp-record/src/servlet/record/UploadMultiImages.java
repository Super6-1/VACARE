package servlet.record;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet (name = "UploadMultiImages", urlPatterns = {"/UploadMultiImages"})
@MultipartConfig
public class UploadMultiImages extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//������Ӧ���͵���������
		response.setContentType("text/html; charset=utf-8");
		//ȡ���������
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		
		try {
		File uploadFileDir = new File(getServletContext().getRealPath("/uploadFiles"));
		
		if(!uploadFileDir.exists()) {
			uploadFileDir.mkdir();
		}
		
		//���part����
		Collection<Part> parts = request.getParts();
		for(Part part:parts) {
			System.out.println(111);
			//û��ѡ���ļ�����ļ���
			if(part == null || !part.getName().contains("resPat")) {
				continue;
			}
			System.out.println(121);
			String fileName = part.getSubmittedFileName();//ֱ�ӻ�ȡ�ļ���, tomcat8.0����
			System.out.println(131);
			if(fileName != null) {
				//�ϴ���������
				System.out.println(141);
				part.write(uploadFileDir + File.separator + fileName);
			}
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
}		
	

