package dao.record;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.record.stdvac;

public class StdVacDao {
	private String message;
	public static final String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf-8";
	public static final String USER = "root";
	public static final String PASSWORD = "123456";
		
	private Connection conn;
		private Statement stmt;
		
		public StdVacDao() {
			try {
		          //1.加载驱动程序
		    	  Class.forName("com.mysql.jdbc.Driver");
			      //2. 获得数据库连接
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.操作数据库，实现增删改查
			      stmt = conn.createStatement();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public List<stdvac> selectByNoteid(Integer Note_id) throws SQLException
		{
			String sql = "select * from standardvaccine where User_id = 0 and Note_id = "+Note_id;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<stdvac> StdVac = new ArrayList<>();
			while(rs.next())
			{
				stdvac v = new stdvac(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8));
				StdVac.add(v);		
			}
			return StdVac;
		}

	}