<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Dashboard</title>
 
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body class="bg-gray-100 h-screen flex">

  <!-- Sidebar -->
  <aside class="w-64 bg-white shadow-lg p-4">
    <h2 class="text-2xl font-bold text-gray-800 mb-8">Admin Panel</h2>
    <nav class="flex flex-col gap-4">
      <a href="#" class="text-gray-700 hover:text-orange-500"><i class="fas fa-table mr-2"></i>View Users</a>
      <a href="insert.jsp" class="text-white bg-orange-500 px-4 py-2 rounded hover:bg-orange-600 text-center w-full"><i class="fas fa-plus mr-2"></i>Create New</a>
    </nav>
  </aside>

  <!-- Main Content -->
  <div class="flex-1 flex flex-col">

  
    	<!-- Top Bar -->
	<header class="bg-white shadow px-6 py-4 flex justify-between items-center">
 	 	<h1 class="text-xl font-semibold">User Management</h1>
  		<div class="flex items-center gap-4">
    		<span class="text-gray-600 flex items-center gap-2">
      			<img src="data:image/png;base64,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" alt="Admin Profile" class="w-8 h-8 rounded-full object-cover" />
      				Welcome, Admin
    		</span>
   			<a href="logout.jsp" class="text-red-500 hover:text-red-700"><i class="fas fa-sign-out-alt"></i> Logout</a>
  		</div>
	</header>
    	

    <!-- Table Section -->
    <main class="p-6 overflow-auto">
      <div class="bg-white shadow-md rounded-lg p-4">
        <h2 class="text-lg font-semibold mb-4">User Table</h2>
        <table class="min-w-full table-auto border border-gray-300">
          <thead>
            <tr class="bg-gray-200 text-left">
              <th class="px-4 py-2 border">ID</th>
              <th class="px-4 py-2 border">Name</th>
              <th class="px-4 py-2 border">Email</th>
              <th class="px-4 py-2 border">Phone</th>
              <th class="px-4 py-2 border">DOB</th>
              <th class="px-4 py-2 border">Gender</th>
              <th class="px-4 py-2 border">Address</th>
              <th class="px-4 py-2 border">Role</th>
              <th class="px-4 py-2 border">Actions</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="schools" items="${allSchool}">
              <tr class="border-b hover:bg-gray-50">
                <td class="px-4 py-2 border">${schools.id}</td>
                <td class="px-4 py-2 border">${schools.name}</td>
                <td class="px-4 py-2 border">${schools.email}</td>
                <td class="px-4 py-2 border">${schools.phone}</td>
                <td class="px-4 py-2 border">${schools.date_of_birth}</td>
                <td class="px-4 py-2 border">${schools.gender}</td>
                <td class="px-4 py-2 border">${schools.address}</td>
                <td class="px-4 py-2 border">${schools.role}</td>
                <td class="px-4 py-2 border">
                  <!-- Edit Button -->
                  <a href="edit.jsp?id=${schools.id}&name=${schools.name}&email=${schools.email}&phone=${schools.phone}&date_of_birth=${schools.date_of_birth}&gender=${schools.gender}&address=${schools.address}&role=${schools.role}" class="text-blue-500 hover:text-blue-700 mr-2">
                    <i class="fas fa-edit"></i>
                  </a>
                  <!-- Delete Button -->
                  <form action="ProfileDelete" method="post" class="inline">
                    <input type="hidden" name="id" value="${schools.id}" />
                    <button type="submit" class="text-red-500 hover:text-red-700" onclick="return confirm('Are you sure you want to delete this record?');">
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
