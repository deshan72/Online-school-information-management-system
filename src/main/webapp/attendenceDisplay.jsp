<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Teacher Attendance Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gray-100 min-h-screen flex">

<!-- Sidebar -->
<aside class="w-64 bg-white shadow-md h-screen p-6">
  <h1 class="text-2xl font-bold text-gray-800 mb-6">Teacher Panel</h1>
  <nav class="space-y-4">
    <a href="#" class="block text-gray-700 hover:text-orange-600 font-medium">
      <i class="fas fa-eye mr-2"></i> View Attendance
    </a>
    <a href="#" class="block text-gray-700 hover:text-orange-600 font-medium">
      <i class="fas fa-calendar-alt mr-2"></i> Class Schedule
    </a>
    <a href="#" class="block text-gray-700 hover:text-orange-600 font-medium">
      <i class="fas fa-envelope mr-2"></i> Messages
    </a>
    <a href="#" class="block text-gray-700 hover:text-orange-600 font-medium">
      <i class="fas fa-cog mr-2"></i> Settings
    </a>
    <a href="#" class="block text-gray-700 hover:text-orange-600 font-medium">
      <i class="fas fa-user mr-2"></i> Profile
    </a>
  </nav>
</aside>

<!-- Main Content -->
<div class="flex-1 flex flex-col">

  <!-- Top Navbar -->
  <header class="bg-white shadow-md py-4 px-6 flex justify-between items-center">
    <div></div>
    <div class="flex items-center space-x-6">
      <div class="flex items-center space-x-2">
        <img src="${sessionScope.profileImage != null ? sessionScope.profileImage : 'https://cdn-icons-png.flaticon.com/512/847/847969.png'}"
             alt="Profile"
             class="w-10 h-10 rounded-full object-cover border-2 border-gray-300">
        <span class="font-medium text-gray-700">Welcome, <span class="text-orange-600 font-semibold">Teacher</span></span>
      </div>
      <a href="Display.jsp" class="text-red-500 hover:text-red-700 font-semibold flex items-center">
        <i class="fas fa-sign-out-alt mr-1"></i> Logout
      </a>
    </div>
  </header>

  <!-- Attendance Table Section -->
  <main class="max-w-7xl mx-auto mt-10 px-4 w-full">
    <!-- Heading and Create Attendance Button -->
    <div class="flex justify-between items-center mb-6">
      <h2 class="text-3xl font-semibold text-gray-700">Student Attendance</h2>
      <a href="attendenceInsert.jsp" class="bg-orange-500 hover:bg-orange-600 text-white font-semibold py-2 px-4 rounded-lg shadow">
        <i class="fas fa-plus mr-1"></i> Create Attendance
      </a>
    </div>

    <!-- Table -->
    <div class="bg-white rounded-lg shadow overflow-x-auto">
      <table class="min-w-full table-auto border border-gray-300">
        <thead>
        <tr class="bg-gray-200 text-gray-700 text-sm uppercase">
          <th class="px-4 py-2 border">Student ID</th>
          <th class="px-4 py-2 border">Name</th>
          <th class="px-4 py-2 border">Grade</th>
          <th class="px-4 py-2 border">Class Room</th>
          <th class="px-4 py-2 border">Date</th>
          <th class="px-4 py-2 border">Status</th>
          <th class="px-4 py-2 border">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="attendence" items="${allAttendence}">
          <tr class="hover:bg-gray-50 border-b">
            <td class="px-4 py-2 border">${attendence.studentID}</td>
            <td class="px-4 py-2 border">${attendence.name}</td>
            <td class="px-4 py-2 border">${attendence.grade}</td>
            <td class="px-4 py-2 border">${attendence.classRoom}</td>
            <td class="px-4 py-2 border">${attendence.date}</td>
            <td class="px-4 py-2 border">
              <c:choose>
                <c:when test="${attendence.status == 'Present'}">
                  <span class="text-green-600 font-semibold">${attendence.status}</span>
                </c:when>
                <c:otherwise>
                  <span class="text-red-600 font-semibold">${attendence.status}</span>
                </c:otherwise>
              </c:choose>
            </td>
            <td class="px-4 py-2 border text-center space-x-2">
              <a href="attendenceUpdate.jsp?studentID=${attendence.studentID}&name=${attendence.name}&grade=${attendence.grade}&classRoom=${attendence.classRoom}&date=${attendence.date}&status=${attendence.status}" 
                 class="text-blue-500 hover:text-blue-700">
                <i class="fas fa-edit"></i>
              </a>
              <form action="AttendenceDeleteServlet" method="post" class="inline">
                <input type="hidden" name="studentID" value="${attendence.studentID}" />
                <button type="submit" onclick="return confirm('Are you sure you want to delete this record?');" 
                        class="text-red-500 hover:text-red-700">
                  <i class="fas fa-trash"></i>
                </button>
              </form>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </main>

</div>

</body>
</html>
