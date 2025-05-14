package schoolPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String date_of_birth =request.getParameter("date_of_birth");
		String gender =request.getParameter("gender");
		String address =request.getParameter("address");
		String role =request.getParameter("role");
		
		boolean isTrue;
		isTrue=UserController.updatedata(id, name, email, phone, date_of_birth, gender, address, role);
		
		if(isTrue==true) {
			
			List <UserModel>userdetail=UserController.getById(id);
			request.setAttribute("userdetail", userdetail);
			
			String alertMessage ="Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='UserGetAllServlet' </script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		
		}
		
	}

}
