package com.database.util;
import java.sql.*;

public class conutil {
	
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 	
	Connection conn=null;
	public static Connection connectdb()
	{
		String jdbcUrl = "jdbc:mysql://localhost:3306/dibyanshu";
		String username = "root";
		String password = "root";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
		return conn;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}
	}
}
