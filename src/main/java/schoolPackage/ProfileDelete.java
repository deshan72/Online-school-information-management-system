package schoolPackage;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProfileDelete")
public class ProfileDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Do post call");
		String id=request.getParameter("id");
		boolean isTrue;
		isTrue=UserController.deletedata(id);
		if(isTrue==true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');"+"window.location.href='UserGetAllServlet'</script>");
				
		}
		else {
			List<UserModel>userdetails=UserController.getById(id);
			request.setAttribute("userdetails", userdetails);
			
			RequestDispatcher dispatcher =request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}

