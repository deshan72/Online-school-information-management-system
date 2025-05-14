package schoolPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetAllServelet")
public class GetAllServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		List<SchoolModel> allPayments = SchoolControl.getAllPayment();
		request.setAttribute("allPayments", allPayments);  // Must match the JSP expression
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Display.jsp");
		dispatcher.forward(request, response);
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	

}
