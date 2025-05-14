package schoolPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServelet")
public class DeleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("ID");
		
		boolean isTrue;
		
		isTrue = SchoolControl.deletedata(ID);
		
		if(isTrue == true) {
			
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href = 'GetAllServelet' </script>");
			
		}
		else {
			
			List <SchoolModel> paymentDetails = SchoolControl.getById(ID);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}
