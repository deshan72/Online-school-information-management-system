package schoolPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserInsertServlet")
public class UserInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String date_of_birth =request.getParameter("date_of_birth");
		String gender =request.getParameter("gender");
		String address =request.getParameter("address");
		String role =request.getParameter("role");
		
		boolean isTrue;
		
		isTrue =UserController.insertdata(name, email, phone, date_of_birth, gender, address, role);
		
		if(isTrue==true) {
			String alertMessage ="Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='UserGetAllServlet' </script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		
		}
	}

}
