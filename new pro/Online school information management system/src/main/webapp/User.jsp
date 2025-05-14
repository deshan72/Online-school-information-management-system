<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EduCore - School Management System</title>
    <!-- Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .login-tab {
            transition: all 0.3s ease;
        }
        .login-tab.active {
            background-color: #16a34a; /* green-600 */
            color: white;
        }
        .login-tab:not(.active):hover {
            background-color: #dcfce7; /* green-100 */
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex items-center">
    <div class="container mx-auto px-4">
        <div class="flex flex-col lg:flex-row shadow-2xl rounded-2xl overflow-hidden bg-white">
            <!-- Left Side - Login Form -->
            <div class="w-full lg:w-1/2 p-8 md:p-12">
                <div class="flex justify-center mb-8">
                    <div class="bg-green-100 p-3 rounded-full">
                        <i class="fas fa-graduation-cap text-green-600 text-4xl"></i>
                    </div>
                </div>
                
                <h1 class="text-3xl font-bold text-center text-gray-800 mb-2">EduCore</h1>
                <p class="text-center text-gray-600 mb-8">School Management System</p>
                
                <!-- User Type Tabs -->
                <div class="flex border rounded-lg overflow-hidden mb-8">
                    <button id="studentTab" class="login-tab active flex-1 py-3 px-4 text-center font-medium" onclick="switchLoginType('student')">
                        <i class="fas fa-user-graduate mr-2"></i>Student
                    </button>
                    <button id="teacherTab" class="login-tab flex-1 py-3 px-4 text-center font-medium" onclick="switchLoginType('teacher')">
                        <i class="fas fa-chalkboard-teacher mr-2"></i>Teacher
                    </button>
                    <button id="adminTab" class="login-tab flex-1 py-3 px-4 text-center font-medium" onclick="switchLoginType('admin')">
                        <i class="fas fa-user-shield mr-2"></i>Admin
                    </button>
                </div>
                
                <!-- Login Form -->
                <form id="loginForm" method="post" action="login.jsp">
                    <input type="hidden" id="userType" name="userType" value="student">
                    
                    <div class="mb-6">
                        <label for="username" class="block text-sm font-medium text-gray-700 mb-1">
                            <i class="fas fa-user mr-2 text-green-600"></i>Username
                        </label>
                        <div class="relative">
                            <input type="text" id="username" name="username" required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-green-500"
                                placeholder="Enter student ID (e.g., S1001)">
                        </div>
                    </div>
                    
                    <div class="mb-6">
                        <label for="password" class="block text-sm font-medium text-gray-700 mb-1">
                            <i class="fas fa-lock mr-2 text-green-600"></i>Password
                        </label>
                        <div class="relative">
                            <input type="password" id="password" name="password" required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-green-500"
                                placeholder="Enter password (e.g., student123)">
                        </div>
                    </div>
                    
                    <div class="flex items-center justify-between mb-6">
                        <div class="flex items-center">
                            <input id="rememberMe" name="rememberMe" type="checkbox" 
                                class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300 rounded">
                            <label for="rememberMe" class="ml-2 block text-sm text-gray-700">
                                Remember me
                            </label>
                        </div>
                        <a href="#" class="text-sm text-green-600 hover:text-green-500">
                            Forgot password?
                        </a>
                    </div>
                    
                    <!-- Replace this block in your form where the single "Log In" button was -->
					<div class="grid grid-cols-1 gap-4 sm:grid-cols-3 mt-4">
					    <a href="AdminLog.jsp"
					       class="block w-full text-center bg-green-600 text-white py-3 px-4 rounded-lg font-medium hover:bg-green-700 transition duration-200">
					        <i class="fas fa-user-graduate mr-2"></i>Student Login 
					    </a>
					    <a href="TeacherLog.jsp"
					       class="block w-full text-center bg-green-600 text-white py-3 px-4 rounded-lg font-medium hover:bg-green-700 transition duration-200">
					        <i class="fas fa-chalkboard-teacher mr-2"></i>Teacher Login
					    </a>
					    <a href="AdminLog.jsp"
					       class="block w-full text-center bg-green-600 text-white py-3 px-4 rounded-lg font-medium hover:bg-green-700 transition duration-200">
					        <i class="fas fa-user-shield mr-2"></i>Admin Login
					    </a>
					</div>
                    

                    <!-- Demo Credentials -->
                    <div class="mt-6 p-4 bg-gray-100 rounded-lg">
                        <h3 class="font-medium text-gray-800 mb-2">Demo Credentials:</h3>
                        <ul class="text-sm space-y-1">
                            <li><span class="font-medium">Admin:</span> admin / admin123</li>
                            <li><span class="font-medium">Teacher:</span> teacher1 / teach123</li>
                            <li><span class="font-medium">Student:</span> S1001 / student123</li>
                        </ul>
                    </div>
                    
                    <div class="mt-6 text-center">
                        <p class="text-sm text-gray-600">
                            Don't have an account yet? 
                            <a href="#" class="text-green-600 hover:text-green-500 font-medium">Register here</a>
                        </p>
                    </div>
                </form>
            </div>
            
            <!-- Right Side - Promo Content -->
            <div class="w-full lg:w-1/2 bg-gradient-to-br from-green-600 to-green-800 p-8 md:p-12 flex flex-col justify-center text-white">
                <div class="max-w-md mx-auto">
                    <h2 class="text-3xl font-bold mb-4">Start managing now</h2>
                    <p class="text-lg mb-6 opacity-90">
                        Stop struggling with common tasks and focus on the real choke points. 
                        Discover a full featured and 100% Free School management platform. Automate attendance, grades, reports, and communication in one click.
                    </p>
                    
                    <div class="space-y-4 mb-8">
                        <div class="flex items-start">
                            <i class="fas fa-check-circle mt-1 mr-3 text-green-200"></i>
                            <span>Streamlined student management</span>
                        </div>
                        <div class="flex items-start">
                            <i class="fas fa-check-circle mt-1 mr-3 text-green-200"></i>
                            <span>Say goodbye to paperwork. Say hello to smarter education</span>
                        </div>
                        <div class="flex items-start">
                            <i class="fas fa-check-circle mt-1 mr-3 text-green-200"></i>
                            <span>Comprehensive gradebook system</span>
                        </div>
                    </div>
                    
                    <a href="#" class="inline-block bg-white text-green-600 py-3 px-6 rounded-lg font-medium hover:bg-gray-100 transition duration-200">
                        Get started <i class="fas fa-arrow-right ml-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script>
        function switchLoginType(type) {
            document.querySelectorAll('.login-tab').forEach(tab => {
                tab.classList.remove('active');
            });
            document.getElementById(type + 'Tab').classList.add('active');
            document.getElementById('userType').value = type;

            const usernameField = document.getElementById('username');
            const passwordField = document.getElementById('password');
            
            if (type === 'student') {
                usernameField.placeholder = "Enter student ID (e.g., S1001)";
                passwordField.placeholder = "Enter password (e.g., student123)";
            } else if (type === 'teacher') {
                usernameField.placeholder = "Enter teacher ID (e.g., teacher1)";
                passwordField.placeholder = "Enter password (e.g., teach123)";
            } else {
                usernameField.placeholder = "Enter admin username (e.g., admin)";
                passwordField.placeholder = "Enter password (e.g., admin123)";
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            const tabs = {
                'studentTab': {user: 'S1001', pass: 'student123'},
                'teacherTab': {user: 'teacher1', pass: 'teach123'},
                'adminTab': {user: 'admin', pass: 'admin123'}
            };

            Object.keys(tabs).forEach(tabId => {
                document.getElementById(tabId).addEventListener('click', function() {
                    setTimeout(() => {
                        document.getElementById('username').value = tabs[tabId].user;
                        document.getElementById('password').value = tabs[tabId].pass;
                    }, 100);
                });
            });
        });
    </script>
</body>
</html>
