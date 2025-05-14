package schoolPackage;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class SchoolControl {
	
	//CONNECT DB
	  private static boolean isSuccess;
	    private static Connection con = null;
	    private static Statement stmt = null;
	    private static ResultSet rs = null;

	    //INSERT DATA FUNCTION
	    public  static boolean insertdata(String Name, String Bank_Name, String Account_Number, String Amount, String Date) {
	        
	    	boolean isSuccess = false;
	        
	        try {
	            // DB CONNECTION CALL
	            con = DBConnection.getConnection();
	            stmt = con.createStatement();

	            // SQL QUERY
	            String sql = "insert into payment values (0, '" + Name + "', '" + Bank_Name + "', '" + Account_Number + "', '" + Amount + "', '" + Date + "')";
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            }
	            else {
	            	isSuccess = false;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return isSuccess;
	    }
	    
	    //DATA DISPLAY
	    
	    public static List <SchoolModel> getById (String id){
	    	
	    	int convertID = Integer.parseInt(id);
	    	
	    	ArrayList <SchoolModel> payment = new ArrayList<>();
	    	
	    	try {
	    		
	    		//DB CONNECTION
	    		con = DBConnection.getConnection();
	            stmt = con.createStatement();
	            
	            
	            //QUEURY
	            String sql = "select * from payment where ID '"+convertID+"'";
	            
	            rs = stmt.executeQuery(sql);
	            
	            while(rs.next()) {
	            	
	            	int ID = rs.getInt(1);
	            	String Name = rs.getString(2);
	            	String Bank_Name = rs.getString(3);
	            	String Account_Number = rs.getString(4);
	            	String Amount = rs.getString(5);
	            	String Date = rs.getString(6);
	            	
	            	SchoolModel bk = new SchoolModel(ID,Name,Bank_Name,Account_Number,Amount,Date);
	            	payment.add(bk);
	            
	            }
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return payment;
	    }
	    
	    //GET ALL DATA
	    
	    	public static List<SchoolModel> getAllPayment(){
	    	
	    	ArrayList <SchoolModel> payments = new ArrayList<>();
	    	
	    	try {
	    		
	    		//DB CONNECTION
	    		con = DBConnection.getConnection();
	            stmt = con.createStatement();
	            
	            
	            //QUEURY
	            String sql = "select * from payment ";
	            
	            rs = stmt.executeQuery(sql);
	            
	            while(rs.next()) {
	            	
	            	int ID = rs.getInt(1);
	            	String Name = rs.getString(2);
	            	String Bank_Name = rs.getString(3);
	            	String Account_Number = rs.getString(4);
	            	String Amount = rs.getString(5);
	            	String Date = rs.getString(6);
	            	
	            	SchoolModel bk = new SchoolModel(ID,Name,Bank_Name,Account_Number,Amount,Date);
	            	payments.add(bk);
	            
	            }
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return payments;
	    	
	    	
	    	}
	    
		    	//UPDATE CONTROLL
		    
	    	public static boolean updatedata(String ID, String Name, String Bank_Name, String Account_Number, String Amount,String Date) {
		    		
		    		try {
			    		
			    		//DB CONNECTION
			    		con = DBConnection.getConnection();
			            stmt = con.createStatement();
			            
			            
			            //QUEURY
			            String sql = "update payment set Name ='"+Name+"',Bank_Name ='"+Bank_Name+"',Account_Number ='"+Account_Number+"',Amount ='"+Amount+"',Date ='"+Date+"'"
			            		+"where ID = '"+ID+"'";
			            
			            
			            int rs = stmt.executeUpdate(sql);
			            	
			            if (rs > 0) {
			                isSuccess = true;
			            }
			            else {
			            	isSuccess = false;
			            }
			    	}
			    	catch(Exception e) {
			    		e.printStackTrace();
			    	}
		    		
		    		return isSuccess;
		    		
	    		}
	    	
	    	
	    	//FOR DELETE DATA
	    	
	    	public static boolean deletedata(String ID) {
	    		
	    		int convID = Integer.parseInt(ID);
	    		
	    		try {
	    			
	    			//DB CONNECTION
		    		con = DBConnection.getConnection();
		            stmt = con.createStatement();
		            
		            
		            //QUEURY
		            String sql = "delete from payment where ID = '"+convID+"'";
		            
		            int rs = stmt.executeUpdate(sql);
	            	
		            if (rs > 0) {
		                isSuccess = true;
		            }
		            else {
		            	isSuccess = false;
		            }
		            
	    		}
	    		
	    		catch(Exception e) {
		    		e.printStackTrace();
		    	}
	    		
	    		return isSuccess;
	    	}
		

}
