package schoolPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServelet")
public class InsertServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name = request.getParameter("Name");
		String Bank_Name = request.getParameter("Bank_Name");
		String Account_Number = request.getParameter("Account_Number");
		String Amount = request.getParameter("Amount");
		String Date = request.getParameter("Date");
		
		
		
		boolean isTrue;
		
		isTrue = SchoolControl.insertdata(Name, Bank_Name, Account_Number, Amount, Date);
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href = 'GetAllServelet' </script>");
			
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
			
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		doPost(request, response);
	}
	

}
