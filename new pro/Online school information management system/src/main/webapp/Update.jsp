<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Payment Record</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gradient-to-br from-green-50 via-blue-50 to-purple-100 min-h-screen flex items-center justify-center p-4">

    <div class="bg-white rounded-2xl shadow-2xl max-w-xl w-full p-8">
        <h1 class="text-3xl font-bold text-center text-green-700 mb-6">
            <i class="fas fa-pen-to-square text-green-500 mr-2"></i>Update Payment Record
        </h1>

        <!-- Display success/error messages -->
        <c:if test="${not empty message}">
            <div class="mb-6 p-4 rounded-lg 
                        <c:choose>
                            <c:when test="${messageType eq 'success'}">bg-green-100 text-green-800</c:when>
                            <c:when test="${messageType eq 'error'}">bg-red-100 text-red-800</c:when>
                        </c:choose>">
                ${message}
            </div>
        </c:if>

        <%
            String ID = request.getParameter("ID");
            String Name = request.getParameter("Name");
            String Bank_Name = request.getParameter("Bank_Name");
            String Account_Number = request.getParameter("Account_Number");
            String Amount = request.getParameter("Amount");
            String Date = request.getParameter("Date");
        %>

        <form action="UpdateServelet" method="post" class="space-y-5">
            <div>
                <label class="block text-sm font-semibold text-gray-700 mb-1">
                    <i class="fas fa-id-card mr-2 text-green-600"></i>ID
                </label>
                <input type="number" name="ID" value="<%=ID%>" readonly class="w-full px-4 py-2 border rounded-lg bg-gray-100 text-gray-800">
            </div>

            <div>
                <label class="block text-sm font-semibold text-gray-700 mb-1">
                    <i class="fas fa-user mr-2 text-green-600"></i>Name
                </label>
                <input type="text" name="Name" value="<%=Name%>" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-green-300">
            </div>

            <div>
                <label class="block text-sm font-semibold text-gray-700 mb-1">
                    <i class="fas fa-university mr-2 text-green-600"></i>Bank Name
                </label>
                <input type="text" name="Bank_Name" value="<%=Bank_Name%>" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-green-300">
            </div>

            <div>
                <label class="block text-sm font-semibold text-gray-700 mb-1">
                    <i class="fas fa-credit-card mr-2 text-green-600"></i>Account Number
                </label>
                <input type="text" name="Account_Number" value="<%=Account_Number%>" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-green-300">
            </div>

            <div>
                <label class="block text-sm font-semibold text-gray-700 mb-1">
                    <i class="fas fa-money-bill-wave mr-2 text-green-600"></i>Amount
                </label>
                <input type="number" step="0.01" name="Amount" value="<%=Amount%>" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-green-300">
            </div>

            <div>
                <label class="block text-sm font-semibold text-gray-700 mb-1">
                    <i class="fas fa-calendar-alt mr-2 text-green-600"></i>Date
                </label>
                <input type="date" name="Date" value="<%=Date%>" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-green-300">
            </div>

            <!-- Buttons -->
            <div class="flex justify-center gap-4 pt-4">
                <button type="submit" class="bg-green-600 hover:bg-green-700 text-white px-6 py-2 rounded-lg shadow transition-all duration-200">
                    <i class="fas fa-save mr-2"></i>Save Changes
                </button>
                <a href="GetAllServelet" class="bg-red-500 hover:bg-red-600 text-white px-6 py-2 rounded-lg shadow transition-all duration-200">
                    <i class="fas fa-times mr-2"></i>Cancel
                </a>
            </div>
        </form>
    </div>
</body>
</html>
