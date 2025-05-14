<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Records</title>
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
            <a href="AdminLog.jsp" class="flex items-center gap-3 hover:text-green-600">
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
            <h1 class="text-xl font-semibold text-gray-800">Payment Records</h1>
            <div class="flex items-center gap-4">
                <span class="text-gray-600 font-medium">
                    <i class="fas fa-user-circle mr-2"></i> Sachintha
                </span>
                <a href="logout.jsp" class="text-red-500 hover:text-red-700">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </div>
        </header>

        <!-- Content -->
        <main class="p-6 overflow-auto">
            <!-- Message -->
            <c:if test="${not empty message}">
                <div class="mb-4 p-4 rounded 
                    <c:choose>
                        <c:when test='${messageType == "success"}'>bg-green-100 text-green-700</c:when>
                        <c:otherwise>bg-red-100 text-red-700</c:otherwise>
                    </c:choose>">
                    ${message}
                </div>
            </c:if>

            <!-- Add New Button -->
            <a href="BankDetails.jsp" class="inline-block mb-4 px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700">
                <i class="fas fa-plus mr-2"></i> Add New Payment
            </a>

            <!-- Table -->
            <div class="overflow-x-auto bg-white rounded shadow">
                <table class="min-w-full text-sm">
                    <thead class="bg-green-600 text-white">
                        <tr>
                            <th class="py-3 px-4 text-left">ID</th>
                            <th class="py-3 px-4 text-left">Name</th>
                            <th class="py-3 px-4 text-left">Bank Name</th>
                            <th class="py-3 px-4 text-left">Account Number</th>
                            <th class="py-3 px-4 text-left">Amount</th>
                            <th class="py-3 px-4 text-left">Date</th>
                            <th class="py-3 px-4 text-left">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <c:forEach var="payment" items="${allPayments}">
                            <tr class="hover:bg-gray-50">
                                <td class="py-3 px-4">${payment.getID()}</td>
                                <td class="py-3 px-4">${payment.getName()}</td>
                                <td class="py-3 px-4">${payment.getBank_Name()}</td>
                                <td class="py-3 px-4">${payment.getAccount_Number()}</td>
                                <td class="py-3 px-4">${payment.getAmount()}</td>
                                <td class="py-3 px-4">${payment.getDate()}</td>
                                <td class="py-3 px-4 space-x-2">
                                    <a href="Update.jsp?ID=${payment.getID()}&Name=${payment.getName()}&Bank_Name=${payment.getBank_Name()}&Account_Number=${payment.getAccount_Number()}&Amount=${payment.getAmount()}&Date=${payment.getDate()}" 
                                       class="inline-flex items-center px-3 py-1 bg-blue-500 text-white rounded hover:bg-blue-600 text-xs">
                                        <i class="fas fa-edit mr-1"></i> Update
                                    </a>
                                    <a href="DeleteServelet?ID=${payment.getID()}" 
                                       onclick="return confirm('Are you sure to delete this entry?');"
                                       class="inline-flex items-center px-3 py-1 bg-red-500 text-white rounded hover:bg-red-600 text-xs">
                                        <i class="fas fa-trash-alt mr-1"></i> Delete
                                    </a>
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
