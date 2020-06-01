package dao.record;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.record.recorddetails;

public class RecordDetailsDao {
	private String message;
	public static final String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf-8";
	public static final String USER = "root";
	public static final String PASSWORD = "123456";
		
	private Connection conn;
		private Statement stmt;
		
		public RecordDetailsDao() {
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
		
		public List<recorddetails> selectByNoteid(Integer User_id, Integer Note_id) throws SQLException
		{
			String sql = "select * from recorddetails where User_id = " + User_id + " and Note_id = "  + Note_id ;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<recorddetails> RD = new ArrayList<>();
			while(rs.next())
			{
				recorddetails n = new recorddetails(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getDate(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10));
				RD.add(n);		
			}
			return RD;
		}
		
		public List<recorddetails> selectByNoteidandState(Integer User_id, Integer Note_id, Integer state) throws SQLException
		{
			String sql = "select * from recorddetails where RD_State = '" +state+"' and User_id = " + User_id + " and Note_id = "  + Note_id+ ";";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<recorddetails> RD = new ArrayList<>();
			while(rs.next())
			{
				recorddetails n = new recorddetails(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getDate(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10));
				RD.add(n);		
			}
			System.out.println(RD);
			return RD;
		}
		
		public void delete(int User_id, int Note_id, int RecordDetails_id) throws SQLException
		{
			String sql  = "delete from recorddetails where User_id = "+User_id +" and Note_id = "+Note_id +" and RecordDetails_id = "+RecordDetails_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public void deleteNote(int User_id, int Note_id) throws SQLException
		{
			String sql  = "delete from recorddetails where User_id = "+User_id +" and Note_id = "+Note_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public void updateDate(int User_id, int Note_id, int RecordDetails_id, String date) throws SQLException
		{
			String sql  = "update recorddetails set RD_Date = '"+ date +"' where User_id = "+ User_id +" and Note_id = "+ Note_id + " and RecordDetails_id = "+ RecordDetails_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public void updateState(int User_id, int Note_id, int RecordDetails_id, String date, String batch, String site, String place) throws SQLException
		{
			String sql  = "update recorddetails set RD_Date = '"+ date +"', RD_Batch = '"+ batch +"', RD_Site = '"+ site +"', RD_Place = '"+ place +"', RD_State = 1 where User_id = "+ User_id +" and Note_id = "+ Note_id + " and RecordDetails_id = "+ RecordDetails_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public void addRecordDetails(int User_id, int Note_id, int RecordDetails_id,String name, int dose, String date, String batch, int state, String site, String place, String remark) throws SQLException
		{
			String sql  = "insert into recorddetails values("+User_id+","+Note_id+","+RecordDetails_id+",'"+name+"',"+dose+",'"+date+"','"+batch+"',"+state+",'"+site+"','"+place+"','"+remark+"')";
			System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public int getAllNum(int User_id, int Note_id) throws SQLException
		{
			String sql  = "select count(RecordDetails_id) from recorddetails where User_id = " + User_id+" and Note_id = " + Note_id;
		    System.out.println(sql);
		    ResultSet rs = stmt.executeQuery(sql);
		    if(rs.next())
			{
		    	int num = rs.getInt(1);
		    	return num;
			}
		    return 0;
		}
	}