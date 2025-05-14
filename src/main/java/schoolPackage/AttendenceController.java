package schoolPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class AttendenceController {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean insertData(String studentID, String name, int grade, String classRoom, LocalDate date, String status) {

        boolean isSuccess = false;

        try {
        	//DBVConnection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // Convert LocalDate to java.sql.Date
            Date sqlDate = Date.valueOf(date);

            String sql = "INSERT INTO attendence (studentID, name, grade, classRoom, date, status) VALUES ('"
                    + studentID + "','" + name + "'," + grade + ",'" + classRoom + "','" + sqlDate + "','" + status + "')";
            
            int rs = stmt.executeUpdate(sql);
            
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
    
    //getById
    public static List<AttendanceModel> getById(String studentID) {
        
    	ArrayList<AttendanceModel> attendence = new ArrayList<>();

        try {
        	//DBConnection
            con = DBConnection.getConnection();
            
         // Prepare SQL query to select records where studentID and date match
            String sql = "SELECT * FROM attendence WHERE studentID = ?";
            
            PreparedStatement stmt = con.prepareStatement(sql);
            
            stmt.setString(1, studentID); // Set query parameters
        
            rs = stmt.executeQuery();// Execute the query

            while (rs.next()) {// Iterate over the result set and create AttendenceModel objects
                String id = rs.getString("studentID");
                String name = rs.getString("name");
                int grade = rs.getInt("grade");
                String classRoom = rs.getString("classRoom");
                Date sqlDate = rs.getDate("date");
                String status = rs.getString("status");

             // Convert SQL date to LocalDate and add the record to the list
                AttendanceModel model = new AttendanceModel(id, name, grade, classRoom, sqlDate.toLocalDate(), status);
                attendence.add(model);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return attendence;
    }
    
    //GetAll Data
    	public static List<AttendanceModel> getAllAttendence() {
        
    	ArrayList<AttendanceModel> attendence = new ArrayList<>();
    	
    	try {
        	//DBConnection
            con = DBConnection.getConnection();
            
            String sql = "SELECT * FROM attendence";
            
            PreparedStatement stmt = con.prepareStatement(sql);

            rs = stmt.executeQuery();// Execute the query

            while (rs.next()) {// Iterate over the result set and create AttendenceModel objects
                String id = rs.getString("studentID");
                String name = rs.getString("name");
                int grade = rs.getInt("grade");
                String classRoom = rs.getString("classRoom");
                Date sqlDate = rs.getDate("date");
                String status = rs.getString("status");

             // Convert SQL date to LocalDate and add the record to the list
                AttendanceModel model = new AttendanceModel(id, name, grade, classRoom, sqlDate.toLocalDate(), status);
                attendence.add(model);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return attendence;
    }
    	
    	//Update Data
    	 public static boolean updatedata(String studentID, String name, int grade, String classRoom, LocalDate date, String status) {
    	        boolean isSuccess = false;
    	        
    	        studentID = studentID.trim();
    	        name = name.trim();

    	        try {
    	            Connection con = DBConnection.getConnection();

    	            // Convert LocalDate to java.sql.Date
    	            Date sqlDate = Date.valueOf(date);

    	            String sql = "UPDATE attendence SET name = ?, grade = ?, classRoom = ?, date = ?, status = ? WHERE studentID = ?";
    	            PreparedStatement pstmt = con.prepareStatement(sql);
    	            pstmt.setString(1, name);
    	            pstmt.setInt(2, grade);
    	            pstmt.setString(3, classRoom);
    	            pstmt.setDate(4, sqlDate);
    	            pstmt.setString(5, status);
    	            pstmt.setString(6, studentID);  // WHERE clause


    	            int rowsAffected = pstmt.executeUpdate();
    	           

    	            if (rowsAffected > 0) {
    	                isSuccess = true;
    	            } else {
    	                System.out.println("⚠️ No rows updated. Check if studentID exists.");
    	            }

    	        } catch (Exception e) {
    	            System.out.println("❌ Error while updating attendance:");
    	            e.printStackTrace();
    	        }

    	        return isSuccess;
    	    }
    	
    	//Delete Data
    	public static boolean deletedata(String studentID) {
    	    boolean isSuccess = false;

    	    try {
    	        // DB Connection
    	        con = DBConnection.getConnection();

    	        // Use PreparedStatement to avoid SQL injection
    	        String sql = "DELETE FROM attendence WHERE studentID = ?";
    	        PreparedStatement ps = con.prepareStatement(sql);
    	        ps.setString(1, studentID);

    	        int rs = ps.executeUpdate();

    	        isSuccess = rs > 0;

    	    } catch (Exception e) {
    	        e.printStackTrace();
    	    }

    	    return isSuccess;
    	}

}
    	




