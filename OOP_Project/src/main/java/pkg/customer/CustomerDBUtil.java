package pkg.customer;

import pkg.customer.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDBUtil {
	
	/* instance variables */
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> validate(String userName, String password) {
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//validate
		
		try {
			
			/* create database connection */
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from customer where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String paymentMethod = rs.getString(7);
				int clothes = rs.getInt(8);
				String userD = rs.getString(9);
				String passD = rs.getString(10);
				
				Customer c = new Customer(id,fname,lname,address,phone,email,paymentMethod,clothes,userD,passD);
				cus.add(c);
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	/* Insert method */
	public static boolean insertcustomer(String fname, String lname, String address, String phone, String email, 
			String payMethod, String clothes, String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			
			/* create database connection */
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			/* insert query */
			String sql = "insert into customer values (0,'"+fname+"','"+lname+"','"+address+"','"+phone+"','"+email+"','"+payMethod+"','"+clothes+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	/* update method */
	public static boolean updatecustomer(String id, String fname, String lname, String address, String phone, String email, 
			String payment, String clothes) {
		
		
		
		try {
			
			/* create database connection */
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			/* update Query */
			String sql = "update customer set fname='"+fname+"', lname='"+lname+"', address='"+address+"', phone='"+phone+"', email='"+email+"', payment='"+payment+"', clothes='"+clothes+"'" + "where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} 
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	public static List<Customer> getCustomerDetails1(String Id){
		
		int convetredID = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from customer where id='"+convetredID+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String paymentMethod = rs.getString(7);
				int clothes = rs.getInt(8);
				
				Customer c = new Customer(id,fname,lname,address,phone,email,paymentMethod,clothes);
				cus.add(c);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	/* Delete method */
	public static boolean deleteCustomer(String id) {
		int convID = Integer.parseInt(id);
		
		try {
			
			/* create database connection */
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			/* delete query */
			String sql = "delete from customer where id='"+convID+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<Customer> getCustomerDetails(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	

	

	

}
