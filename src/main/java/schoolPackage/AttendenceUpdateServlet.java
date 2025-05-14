package schoolPackage;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AttendenceUpdateServlet")
public class AttendenceUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	  String studentId = request.getParameter("studentID");
          String name = request.getParameter("name");
          int gradee = Integer.parseInt(request.getParameter("grade"));
          String classRoom = request.getParameter("classRoom");
          LocalDate datee = LocalDate.parse(request.getParameter("date"));
          String status = request.getParameter("status");
          
          System.out.println(studentId);


        try {
          
            boolean isTrue = AttendenceController.updatedata(studentId, name, gradee, classRoom, datee, status);

            if (isTrue) {
                response.getWriter().println("<script>alert('Data Update Successful'); window.location.href='AttendenceUpdateServletGetAllServlet';</script>");
            } 
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<script>alert('Invalid input data!'); window.location.href='index.jsp';</script>");
        }
    }
}
