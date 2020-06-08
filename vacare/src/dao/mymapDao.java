package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import bean.mymap;

public class mymapDao {
	public static final String URL = "jdbc:mysql://localhost:3306/vacare?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&characterEncoding=utf8";
	public static final String USER = "root";
	public static final String PASSWORD = "123456";
		
	private Connection conn;
		private Statement stmt;
		
		public mymapDao() {
			try {
		          //1.������������
		    	  Class.forName("com.mysql.jdbc.Driver");
			      //2. ������ݿ�����
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.�������ݿ⣬ʵ����ɾ�Ĳ�
			      stmt = conn.createStatement();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public List<mymap> selectAll(String str1,String str2) throws SQLException
		{
			String sql = "select name,location,tel,time from "+str1+" where district = '" + str2+"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<mymap> Note = new ArrayList<>();
			while(rs.next())
			{
				mymap n = new mymap(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
				Note.add(n);		
			}
			return Note;
		}
		
		
		
		
		
		
	}