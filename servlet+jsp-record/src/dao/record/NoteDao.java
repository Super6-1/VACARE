package dao.record;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.record.note;

public class NoteDao {
	private String message;
	public static final String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf-8";
	public static final String USER = "root";
	public static final String PASSWORD = "123456";
		
	private Connection conn;
		private Statement stmt;
		
		public NoteDao() {
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
		
		public List<note> selectAll(Integer User_id) throws SQLException
		{
			String sql = "select * from note where User_id = " + User_id;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<note> Note = new ArrayList<>();
			while(rs.next())
			{
				note n = new note(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDate(5),  rs.getInt(6));
				Note.add(n);		
			}
			return Note;
		}
		
		public List<note> selectByNoteid(Integer User_id, Integer Note_id) throws SQLException
		{
			String sql = "select * from note where User_id = " + User_id + " and Note_id = "  + Note_id ;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<note> Note = new ArrayList<>();
			while(rs.next())
			{
				note n = new note(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6));
				Note.add(n);		
			}
			return Note;
		}
		
		public void addType1(int User_id, int Note_id, String name, String pic, String date) throws SQLException
		{
			String sql  = "insert into note values("+User_id+","+Note_id +",'"+name+"','"+pic+"','"+date+"',"+1+")";
			System.out.println(sql);
	     	stmt.execute(sql);
		}
		
		public void addType2(int User_id, int Note_id, String name, String pic, String text, String date) throws SQLException
		{
			String sql  = "insert into note values("+User_id+","+Note_id +",'"+name+"','"+pic+"','"+date+"',"+2+")";
			System.out.println(sql);
	     	stmt.execute(sql);
		}
		
		public void delete(int User_id, int Note_id) throws SQLException
		{
			String sql  = "delete from note where User_id = "+User_id +" and Note_id = "+Note_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public void setNoteName(int User_id, int Note_id, String name) throws SQLException
		{
			String sql  = "update note set N_Name = '"+ name +"' where User_id = "+User_id +" and Note_id = "+Note_id;
		    System.out.println(sql);
		    stmt.execute(sql);
		}
		
		public int getAllNum(int User_id) throws SQLException
		{
			String sql  = "select count(Note_id) from note where User_id = " + User_id;
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