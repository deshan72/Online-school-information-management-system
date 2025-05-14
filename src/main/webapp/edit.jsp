<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<!-- Tailwind CSS CDN -->
<script src="https://cdn.tailwindcss.com"></script>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gray-100 h-screen flex font-sans">

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String date_of_birth = request.getParameter("date_of_birth");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String role = request.getParameter("role");

    // Example admin details
    String adminName = "Admin User";
%>

<!-- Sidebar -->
<div class="w-64 bg-white shadow-md h-full fixed">
    <div class="p-6 text-xl font-bold border-b border-gray-200">
        Admin Panel
    </div>
    <nav class="mt-6">
        <a href="#" class="block py-2 px-6 text-gray-700 hover:bg-gray-100"><i class="fas fa-users mr-2"></i>Users</a>
        <a href="#" class="block py-2 px-6 text-gray-700 hover:bg-gray-100"><i class="fas fa-cog mr-2"></i>Settings</a>
    </nav>
</div>

<!-- Main content -->
<div class="flex-1 ml-64">
    <!-- Topbar -->
    <div class="bg-white shadow h-16 flex items-center justify-between px-6">
        <div></div>
        <div class="flex items-center space-x-4">
            <span class="text-sm text-gray-600"><i class="fas fa-user-circle mr-1"></i><%=adminName%></span>
            <a href="logout.jsp" class="text-red-600 hover:underline"><i class="fas fa-sign-out-alt mr-1"></i>Logout</a>
        </div>
    </div>

    <!-- Content -->
    <div class="p-6">
        <h2 class="text-2xl font-semibold mb-4">Update User</h2>

        <!-- Update Form -->
        <main class="p-8">
            <form action="UserUpdateServlet" method="post" class="bg-white p-8 rounded shadow-md max-w-3xl mx-auto space-y-6">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">ID</label>
                        <input type="text" name="id" value="<%=id%>" readonly class="w-full border border-gray-300 rounded px-3 py-2">
                    </div>
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">Name</label>
                        <input type="text" name="name" value="<%=name%>" required class="w-full border border-gray-300 rounded px-3 py-2">
                    </div>
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">Email</label>
                        <input type="email" name="email" value="<%=email%>" required class="w-full border border-gray-300 rounded px-3 py-2">
                    </div>
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">Contact No</label>
                        <input type="text" name="phone" value="<%=phone%>" required class="w-full border border-gray-300 rounded px-3 py-2">
                    </div>
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">Date of Birth</label>
                        <input type="date" name="date_of_birth" value="<%=date_of_birth%>" required class="w-full border border-gray-300 rounded px-3 py-2">
                    </div>
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">Gender</label>
                        <select name="gender" required class="w-full border border-gray-300 rounded px-3 py-2">
                            <option value="">--Select Gender--</option>
                            <option value="Male" <%= "Male".equals(gender) ? "selected" : "" %>>Male</option>
                            <option value="Female" <%= "Female".equals(gender) ? "selected" : "" %>>Female</option>
                            <option value="Other" <%= "Other".equals(gender) ? "selected" : "" %>>Other</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-gray-700 font-medium mb-2">Role</label>
                        <select name="role" required class="w-full border border-gray-300 rounded px-3 py-2">
                            <option value="">--Select Role--</option>
                            <option value="student" <%= "student".equals(role) ? "selected" : "" %>>Student</option>
                            <option value="teacher" <%= "teacher".equals(role) ? "selected" : "" %>>Teacher</option>
                        </select>
                    </div>
                    <div class="md:col-span-2">
                        <label class="block text-gray-700 font-medium mb-2">Address</label>
                        <input type="text" name="address" value="<%=address%>" required class="w-full border border-gray-300 rounded px-3 py-2">
                    </div>
                </div>

                <div class="text-right">
                    <button type="submit" class="bg-orange-600 text-white px-6 py-2 rounded hover:bg-orange-700">
                        <i class="fas fa-paper-plane mr-1"></i>Update
                    </button>
                </div>
            </form>
        </main>
    </div>
</div>
</body>
</html>
