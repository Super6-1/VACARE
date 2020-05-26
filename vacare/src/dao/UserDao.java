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

import bean.user;

public class UserDao {
	  private String URL = "jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf8";
	  //DB USER NAME
	  private String USER = "root";
	  //DB PASSWORD
	  private String PASSWORD = "123456";
	  private Connection conn;
	  private Statement stmt;
	  public UserDao() {
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
	  
	  public void updatePwd(int user_id, String password) throws SQLException {
		  String sql="update user set password= '" + password + "' where user_id = " + user_id;
		  stmt.execute(sql);
	}
	  
	  public List<user> queryPwd(int user_id) throws SQLException {
		  String sql="select * from user where user_id = " + user_id;
		  ResultSet rs = stmt.executeQuery(sql);
		  List<user> user = new ArrayList<user>();
		  while(rs.next()) {
			  user i = new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
			  user.add(i);
		  }
		  return user;
	}
	  
	  public void updateInfo(int user_id, String username, String phone, String birthday, String location, String email, String sex) throws SQLException {
		  String sql="update user set phone = \'"+phone+"\' , username = \'"+username+"\' , birthday=\'"+birthday+"\' ,  location=\'"+location+"\' , sex =\'"+ sex+"\' , email=\'"+email+"\' where user_id = "+ user_id; 
		  stmt.execute(sql);
	}

}
