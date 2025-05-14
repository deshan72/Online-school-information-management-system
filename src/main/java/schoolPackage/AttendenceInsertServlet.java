package schoolPackage;

import java.io.IOException;

import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AttendenceInsertServlet")
public class AttendenceInsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentId = request.getParameter("studentID");
        String name = request.getParameter("name");
        int gradee = Integer.parseInt(request.getParameter("grade"));
        String classRoom = request.getParameter("classRoom");
        LocalDate datee = LocalDate.parse(request.getParameter("date"));
        String status = request.getParameter("status");

        boolean isTrue;

        try {
        	
            isTrue = AttendenceController.insertData(studentId, name, gradee, classRoom, datee, status);

            if (isTrue) {
                String alertMessage = "Data Insert Successful";
                response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AttendenceGetAllServlet';</script>");
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
                dis2.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<script>alert('Invalid Input!'); window.location.href='index.jsp';</script>");
        }
    }
}
