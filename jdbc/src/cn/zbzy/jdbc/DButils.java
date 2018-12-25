package cn.zbzy.jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DButils {

	public static Connection getConnection()
			throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException, IOException {

		// 把配置文件的值取出来
		Properties pop = new Properties();
		InputStream in = DButils.class.getClassLoader().getResourceAsStream("jdbc.properties");
		pop.load(in);
		String driverClass = pop.getProperty("driverClass");
		String url = pop.getProperty("url");
		String user = pop.getProperty("user");
		String password = pop.getProperty("password");
		Class.forName(driverClass);
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
  
	public static void close(Connection conn,Statement stat,ResultSet res) {
		
		if(res != null) {
			try {
				res.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(stat !=null) {
			try {
				stat.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
