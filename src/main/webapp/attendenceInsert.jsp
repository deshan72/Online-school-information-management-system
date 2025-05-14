<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Attendance</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-cover bg-center bg-no-repeat min-h-screen flex items-center justify-center"
      style="background-image: url('https://images.unsplash.com/photo-1524995997946-a1c2e315a42f');">

    <!-- Overlay + Blur effect -->
    <div class="absolute inset-0 bg-black/40 backdrop-blur-sm z-0"></div>

    <!-- Form Box -->
    <div class="relative z-10 bg-white/80 backdrop-blur-lg rounded-xl shadow-xl p-8 w-full max-w-md">
        <h2 class="text-2xtl font-bold text-gray-800 text-center mb-6">Add Attendance Record</h2>
        <form action="AttendenceInsertServlet" method="post" class="space-y-4">

            <div>
                <label class="block text-gray-700 font-medium mb-1">Student ID</label>
                <input type="text" name="studentID" required
                       class="w-full px-4 py-2 rounded-md border border-gray-300 focus:outline-none focus:ring-2 focus:ring-orange-500 bg-white/70 text-gray-900 placeholder-gray-400 transition duration-300">
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Name</label>
                <input type="text" name="name" required
                       class="w-full px-4 py-2 rounded-md border border-gray-300 focus:outline-none focus:ring-2 focus:ring-orange-500 bg-white/70 text-gray-900 placeholder-gray-400 transition duration-300">
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Grade</label>
                <select name="grade" required
                        class="w-full px-4 py-2 rounded-md border border-gray-300 focus:outline-none focus:ring-2 focus:ring-orange-500 bg-white/70 text-gray-900 transition duration-300">
                    <option value="">-- Select Grade --</option>
                    <% for (int i = 1; i <= 11; i++) { %>
                        <option value="<%=i%>"><%=i%></option>
                    <% } %>
                </select>
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Class Room</label>
                <select name="classRoom" required
                        class="w-full px-4 py-2 rounded-md border border-gray-300 focus:outline-none focus:ring-2 focus:ring-orange-500 bg-white/70 text-gray-900 transition duration-300">
                    <option value="">-- Select Class Room --</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                    <option value="E">E</option>
                    <option value="F">F</option>
                </select>
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Date</label>
                <input type="date" name="date" required
                       class="w-full px-4 py-2 rounded-md border border-gray-300 focus:outline-none focus:ring-2 focus:ring-orange-500 bg-white/70 text-gray-900 transition duration-300">
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Status</label>
                <select name="status" required
                        class="w-full px-4 py-2 rounded-md border border-gray-300 focus:outline-none focus:ring-2 focus:ring-orange-500 bg-white/70 text-gray-900 transition duration-300">
                    <option value="Present">Present</option>
                    <option value="Absent">Absent</option>
                </select>
            </div>

            <div>
                <input type="submit" value="Submit Attendance"
                       class="w-full bg-orange-500 hover:bg-orange-600 text-white font-semibold py-2 px-4 rounded-md shadow transition duration-300">
            </div>

        </form>
    </div>

</body>
</html>
