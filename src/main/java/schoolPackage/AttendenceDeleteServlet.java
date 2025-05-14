package schoolPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AttendenceDeleteServlet")
public class AttendenceDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("studentID");

        boolean isTrue = AttendenceController.deletedata(id);

        if (isTrue==true) {
            String alertMessage = "Data Delete Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AttendenceGetAllServlet';</script>");
        } else {
        	RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
            dispacher.forward(request, response);
        }
    }
}
