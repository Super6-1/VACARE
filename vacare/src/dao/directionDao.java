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

import bean.direction;

public class directionDao {
	  private String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf8";
	  //DB USER NAME
	  private String USER = "root";
	  //DB PASSWORD
	  private String PASSWORD = "123456";
	  private Connection conn;
	  private Statement stmt;
	  public directionDao() {
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
	  
	  public List<direction> queryAllname() throws SQLException {
		  String sql="select * from direction group by D_name order by convert(D_name using gbk) ASC";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<direction> directions = new ArrayList<direction>();
		  while(rs.next()) {
			  direction i = new direction(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			  directions.add(i);
		  }
		  return directions;
	}
	  
	  public List<direction> queryAllfrom(String name) throws SQLException {
		  String sql="select * from direction where D_name='"+name+"' group by D_from order by convert(D_from using gbk) ASC";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<direction> directions = new ArrayList<direction>();
		  while(rs.next()) {
			  direction i = new direction(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			  directions.add(i);
		  }
		  return directions;
	}
	  
	  public List<direction> queryAllprov(String name) throws SQLException {
		  String sql="select * from direction where D_name='"+name+"' group by D_prov order by convert(D_prov using gbk) ASC";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<direction> directions = new ArrayList<direction>();
		  while(rs.next()) {
			  direction i = new direction(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			  directions.add(i);
		  }
		  return directions;
	}
	  
	  public List<direction> selectfrom(String D_name,String D_from) throws SQLException {
		  String sql="select * from direction where D_name='"+D_name+"' and D_from='"+D_from+"' group by D_prov";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<direction> directions = new ArrayList<direction>();
		  while(rs.next()) {
			  direction i = new direction(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			  directions.add(i);
		  }
		  return directions;
	}
	  
	  public List<direction> selectprov(String D_name,String D_prov) throws SQLException {
		  String sql="select * from direction where D_name='"+D_name+"' and D_prov='"+D_prov+"' group by D_from";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<direction> directions = new ArrayList<direction>();
		  while(rs.next()) {
			  direction i = new direction(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			  directions.add(i);
		  }
		  return directions;
	}
}
