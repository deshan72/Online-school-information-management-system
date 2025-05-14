package schoolPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserController {
	//connect DB
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//insert data function
	public static boolean insertdata (String name, String email, String phone, String date_of_birth, String gender, String address, String role) {
		
		boolean isSuccess = false;
		try {
			//DB connection call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql="insert into school values(0,'"+name+"','"+email+"','"+phone+"','"+date_of_birth+"','"+gender+"','"+address+"','"+role+"')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//GetById
	public static List<UserModel> getById (String Id){
		int convertedID=Integer.parseInt(Id);
		
		ArrayList <UserModel> school =new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();	
			
			//query
			String sql = "select* from school whre id  '"+convertedID+"'";
			
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id =rs.getInt(1);
				String name =rs.getString(2);
				String email =rs.getString(3);
				String phone =rs.getString(4);
				String date_of_birth =rs.getString(5);
				String gender =rs.getString(6);
				String address =rs.getString(7);
				String role =rs.getString(8);
				
				UserModel sm=new UserModel(id,name,email,phone,date_of_birth,gender,address,role);
				school.add(sm);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return school;
	}
	
	//GetAll Data
	public static List <UserModel>getAllBook(){
		ArrayList <UserModel> schools =new ArrayList<>();
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();	
			
			//query
			String sql = "select* from school";
			
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id =rs.getInt(1);
				String name =rs.getString(2);
				String email =rs.getString(3);
				String phone =rs.getString(4);
				String date_of_birth =rs.getString(5);
				String gender =rs.getString(6);
				String address =rs.getString(7);
				String role =rs.getString(8);
				
				UserModel sm=new UserModel(id,name,email,phone,date_of_birth,gender,address,role);
				schools.add(sm);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return schools;
	}
	//update data
	public static boolean updatedata(String id, String name, String email, String phone,String date_of_birth,String gender,String address,String role) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();	
			
			// update sql query
			String sql="update school set name='"+name+"',email='"+email+"',phone='"+phone+"',date_of_birth='"+date_of_birth+"',gender='"+gender+"',address='"+address+"',role='"+role+"'"
					+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	//Delete data
	public static boolean deletedata(String id) {
		int convID=Integer.parseInt(id);
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();	
			
			String sql="delete from school where id="+convID+"";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	

}
