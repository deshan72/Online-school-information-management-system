<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 h-screen flex">

    <!-- Sidebar -->
    <aside class="w-64 bg-white shadow-lg flex flex-col p-6">
        <h2 class="text-2xl font-bold text-green-600 mb-6">Admin Panel</h2>
        <nav class="flex flex-col gap-4 text-gray-700">
            <a href="GetAllServelet" class="flex items-center gap-3 hover:text-green-600">
                <i class="fas fa-table"></i> Payments
            </a>
            <a href="AdminProfile.jsp" class="flex items-center gap-3 hover:text-green-600 font-semibold text-green-600">
                <i class="fas fa-user"></i> Profile
            </a>
            <a href="#" class="flex items-center gap-3 hover:text-green-600">
                <i class="fas fa-cog"></i> Settings
            </a>
        </nav>
    </aside>

    <!-- Main content -->
    <div class="flex-1 flex flex-col">
        
        <!-- Topbar -->
        <header class="bg-white shadow flex justify-between items-center px-6 py-4">
            <h1 class="text-xl font-semibold text-gray-800">Admin Profile</h1>
            <div class="flex items-center gap-4">
                <span class="text-gray-600 font-medium">
                    <i class="fas fa-user-circle mr-2"></i> Sachintha Deshan
                </span>
                <a href="User.jsp" class="text-red-500 hover:text-red-700">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </div>
        </header>

        <!-- Profile Content -->
			<main class="p-10 flex items-center justify-center h-full bg-gradient-to-tr from-green-50 to-blue-100">
			    <div class="bg-white/90 backdrop-blur-md rounded-2xl shadow-2xl p-10 max-w-md w-full border border-gray-200">
			    
			        <!-- Profile Header -->
			        <div class="flex items-center mb-8">
			            <div class="bg-green-500 text-white p-5 rounded-full shadow-lg">
			                <i class="fas fa-user text-3xl"></i>
			            </div>
			            <div class="ml-5">
			                <h2 class="text-3xl font-extrabold text-gray-900">Sachintha Deshan</h2>
			                <p class="text-sm text-gray-500 font-medium">Administrator</p>
			            </div>
			        </div>
			
			        <!-- Profile Fields -->
			        <div class="space-y-5">
			            <div>
			                <label class="text-gray-700 font-semibold block mb-1">
			                    <i class="fas fa-id-badge mr-2 text-green-600"></i>ID
			                </label>
			                <input type="text" value="1" readonly class="w-full border border-gray-300 rounded-lg px-4 py-2 bg-gray-100 text-gray-800 shadow-sm focus:outline-none">
			            </div>
			            <div>
			                <label class="text-gray-700 font-semibold block mb-1">
			                    <i class="fas fa-user-tag mr-2 text-green-600"></i>Name
			                </label>
			                <input type="text" value="Sachintha Deshan" readonly class="w-full border border-gray-300 rounded-lg px-4 py-2 bg-gray-100 text-gray-800 shadow-sm">
			            </div>
			            <div>
			                <label class="text-gray-700 font-semibold block mb-1">
			                    <i class="fas fa-envelope mr-2 text-green-600"></i>Email
			                </label>
			                <input type="email" value="deshan72@gmail.com" readonly class="w-full border border-gray-300 rounded-lg px-4 py-2 bg-gray-100 text-gray-800 shadow-sm">
			            </div>
			            <div>
			                <label class="text-gray-700 font-semibold block mb-1">
			                    <i class="fas fa-user-shield mr-2 text-green-600"></i>Role
			                </label>
			                <input type="text" value="Payment Admin" readonly class="w-full border border-gray-300 rounded-lg px-4 py-2 bg-gray-100 text-gray-800 shadow-sm">
			            </div>
			        </div>
			    </div>
			</main>
    </div>
</body>
</html>
