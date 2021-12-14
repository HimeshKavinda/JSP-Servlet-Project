package pkg.customer;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/laundry";
	private static String user = "root";
	private static String pass = "Mysql";
	private static Connection conn;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, user, pass); 
			
		}
		catch (Exception e) {
			System.out.println("Database connection not successfull!!!");
		}
		
		return conn;
	}
}
