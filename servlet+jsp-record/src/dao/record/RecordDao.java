package dao.record;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.record.record;

public class RecordDao {
	private String message;
	public static final String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf-8";
	public static final String USER = "root";
	public static final String PASSWORD = "123456";
		
	private Connection conn;
		private Statement stmt;
		
		public RecordDao() {
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
		
		public List<record> selectByNoteid(Integer User_id, Integer Note_id) throws SQLException
		{
			String sql = "select * from record where User_id = " + User_id + " and Note_id = "  + Note_id + " order by R_Date asc";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<record> R = new ArrayList<>();
			while(rs.next())
			{
				record r = new record(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getDate(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				R.add(r);		
			}
			return R;
		}
		
		public void delete(int User_id, int Note_id, int Record_id) throws SQLException
		{
			String sql  = "delete from record where User_id = "+ User_id +" and Note_id = "+Note_id + " and Record_id = "+ Record_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public void setRecordName(int User_id, int Note_id,int Record_id, String text) throws SQLException
		{
			String sql  = "update record set R_Text = '"+ text +"' where User_id = "+ User_id +" and Note_id = "+ Note_id + " and Record_id = "+ Record_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
	}