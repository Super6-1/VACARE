package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bean.vaccine;

public class VaccineDao {
	  private String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf8";
	  //DB USER NAME
	  private String USER = "root";
	  //DB PASSWORD
	  private String PASSWORD = "123456";
	  private Connection conn;
	  private Statement stmt;
	  public VaccineDao() {
			try {
		          //1.加载驱动程序
		    	  Class.forName("com.mysql.jdbc.Driver");
			      //2. 获得数据库连接
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.操作数据库，实现增删改查
			      stmt = conn.createStatement();
			      
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  }
	    
	  public List<vaccine> queryVaccine(String vaccine_id) throws SQLException {
		  String sql="SELECT * FROM vaccine where vaccine_id like '" + vaccine_id +"' limit 0,5";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<vaccine> vaccine = new ArrayList<vaccine>();
		  while(rs.next()) {
			  vaccine i = new vaccine(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
			  vaccine.add(i);
		  }
		  System.out.println(sql);
		  System.out.println(vaccine);
		  return vaccine;
	}


}
