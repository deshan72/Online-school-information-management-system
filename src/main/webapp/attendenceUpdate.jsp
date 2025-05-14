<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Attendance</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-cover bg-center bg-no-repeat min-h-screen flex items-center justify-center relative"
      style="background-image: url('https://images.unsplash.com/photo-1524995997946-a1c2e315a42f');">

    <!-- Blur overlay -->
    <div class="absolute inset-0 bg-black/40 backdrop-blur-sm z-0"></div>

<%
    String studentId = request.getParameter("studentID");
    String name = request.getParameter("name");
    String gradeStr = request.getParameter("grade");
    String classRoom = request.getParameter("classRoom");
    String date = request.getParameter("date");
    String status = request.getParameter("status");

    int grade = 0;
    try {
        grade = Integer.parseInt(gradeStr);
    } catch (NumberFormatException e) {
        // ignore
    }
%>

    <!-- Form Card -->
    <div class="relative z-10 bg-white/80 backdrop-blur-lg rounded-xl shadow-xl p-8 w-full max-w-md">
        <h2 class="text-2xl font-bold text-gray-800 text-center mb-6">Update Attendance Record</h2>
        <form action="AttendenceUpdateServlet" method="post" class="space-y-4">

            <div>
                <label class="block text-gray-700 font-medium mb-1">Student ID</label>
                <input type="text" name="studentID" value="<%=studentId%>" readonly
                       class="w-full px-4 py-2 rounded-md border border-gray-300 bg-gray-100 text-gray-600">
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Name</label>
                <input type="text" name="name" value="<%=name%>" required
                       class="w-full px-4 py-2 rounded-md border border-gray-300 bg-white/70 text-gray-900">
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Grade</label>
                <select name="grade" required
                        class="w-full px-4 py-2 rounded-md border border-gray-300 bg-white/70 text-gray-900">
                    <option value="">-- Select Grade --</option>
                    <% for (int i = 1; i <= 11; i++) { %>
                        <option value="<%=i%>" <%= (i == grade) ? "selected" : "" %>><%=i%></option>
                    <% } %>
                </select>
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Class Room</label>
                <select name="classRoom" required
                        class="w-full px-4 py-2 rounded-md border border-gray-300 bg-white/70 text-gray-900">
                    <option value="">-- Select Class Room --</option>
                    <%
                        String[] rooms = {"A", "B", "C", "D", "E", "F"};
                        for (String room : rooms) {
                    %>
                        <option value="<%=room%>" <%= room.equals(classRoom) ? "selected" : "" %>><%=room%></option>
                    <% } %>
                </select>
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Date</label>
                <input type="date" name="date" value="<%= (date != null && !date.isEmpty()) ? date : "" %>" required
                       class="w-full px-4 py-2 rounded-md border border-gray-300 bg-white/70 text-gray-900">
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Status</label>
                <select name="status" required
                        class="w-full px-4 py-2 rounded-md border border-gray-300 bg-white/70 text-gray-900">
                    <option value="Present" <%= "Present".equals(status) ? "selected" : "" %>>Present</option>
                    <option value="Absent" <%= "Absent".equals(status) ? "selected" : "" %>>Absent</option>
                </select>
            </div>

            <div>
                <input type="submit" value="Update Attendance"
                       class="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-md shadow transition duration-300">
            </div>

        </form>
    </div>

</body>
</html>
