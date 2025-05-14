<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bank Payment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .payment-form {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 2px solid #4CAF50;
        }
        .form-header h2 {
            color: #4CAF50;
            margin: 0;
            font-size: 24px;
            letter-spacing: 1px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }
        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group input[type="date"],
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .form-group textarea {
            height: 80px;
            resize: vertical;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 14px 20px;
            width: 100%;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
        .form-divider {
            height: 1px;
            background-color: #eee;
            margin: 25px 0;
        }
    </style>
</head>
<body>
    <div class="payment-form">
        <div class="form-header">
            <h2>BANK PAYMENT FORM</h2>
        </div>
        
        <form action="InsertServelet" method="POST">
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="Name" placeholder="Enter your full name" required>
            </div>
            
            <div class="form-group">
                <label for="accountNumber">Account Number:</label>
                <input type="text" id="accountNumber" name="Account_Number" placeholder="Enter account number" required>
            </div>
            
            <div class="form-group">
                <label for="bankName">Bank Name:</label>
                <input type="text" id="bankName" name="Bank_Name" placeholder="Enter bank name" required>
            </div>
            
            <div class="form-group">
                <label for="branchCode">Branch Code / IFSC:</label>
                <input type="text" id="branchCode" name="branchCode" placeholder="Enter branch code or IFSC" required>
            </div>
            
            <div class="form-group">
                <label for="paymentAmount">Payment Amount:</label>
                <input type="number" id="paymentAmount" name="Amount" placeholder="0.00" min="0" step="0.01" required>
            </div>
            
            <div class="form-group">
                <label for="paymentDate">Payment Date:</label>
                <input type="date" id="paymentDate" name="Date" required>
            </div>
            
            <div class="form-group">
                <label for="remarks">Remarks (optional):</label>
                <textarea id="remarks" name="remarks" placeholder="Enter any additional remarks"></textarea>
            </div>
            
            <div class="form-divider"></div>
            
            <button type="submit" class="submit-btn">Submit Payment</button>
        </form>
    </div>
</body>
</html>