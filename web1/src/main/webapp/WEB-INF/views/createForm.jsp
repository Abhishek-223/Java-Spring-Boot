<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
<!-- Tailwind CSS CDN for easy styling -->
<script src="https://cdn.tailwindcss.com"></script>
<style>
    /* Custom styles to enhance Tailwind defaults and ensure Inter font */
    body {
        font-family: "Inter", sans-serif; /* Apply Inter font */
        background-color: #f0f4f8; /* Light background color */
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh; /* Full viewport height */
        margin: 0;
        padding: 0.5rem; /* Reduced padding for smaller screens */
        box-sizing: border-box; /* Include padding in element's total width and height */
    }
    .form-container {
        background-color: #ffffff;
        padding: 1.5rem 2.5rem; /* Reduced vertical padding (1.5rem top/bottom) */
        border-radius: 1rem; /* Rounded corners */
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1); /* Soft shadow */
        width: 100%;
        max-width: 500px; /* Max width for larger screens */
        /* Removed overflow-y: auto; to prevent scrollbar */
        max-height: 95vh; /* Limit max height to viewport height */
    }
    label {
        font-weight: 600; /* Semi-bold labels */
        color: #4a5568; /* Darker gray for labels */
        margin-bottom: 0.25rem; /* Slightly reduced margin */
        display: block; /* Make labels block-level for better spacing */
    }
    input[type="text"], select {
        width: 100%;
        padding: 0.6rem; /* Slightly reduced padding */
        margin-bottom: 0.85rem; /* Slightly reduced margin */
        border: 1px solid #cbd5e0; /* Light gray border */
        border-radius: 0.5rem; /* Rounded input fields */
        font-size: 1rem;
        color: #2d3748; /* Dark text color */
        transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out; /* Smooth transitions */
    }
    input[type="text"]:focus, select:focus {
        outline: none;
        border-color: #4c51bf; /* Blue border on focus */
        box-shadow: 0 0 0 3px rgba(76, 81, 191, 0.2); /* Soft blue shadow on focus */
    }
    input[type="radio"] {
        margin-right: 0.5rem;
        margin-bottom: 0.5rem; /* Slightly reduced margin */
        accent-color: #4c51bf; /* Change radio button color */
    }
    .radio-group label {
        display: inline-block; /* Keep radio labels inline */
        margin-right: 1.25rem; /* Slightly reduced margin */
        font-weight: normal; /* Normal weight for radio labels */
        color: #2d3748;
    }
    .submit-button {
        background-color: #4c51bf; /* Primary blue color */
        color: white;
        padding: 0.75rem 1.5rem; /* Slightly reduced padding */
        border-radius: 0.75rem;
        font-size: 1.05rem; /* Slightly reduced font size */
        font-weight: 700; /* Bold text */
        cursor: pointer;
        transition: background-color 0.3s ease, box-shadow 0.3s ease; /* Smooth hover effect */
        width: 100%;
        box-shadow: 0 4px 10px rgba(76, 81, 191, 0.3); /* Button shadow */
        border: none; /* Remove default button border */
    }
    .submit-button:hover {
        background-color: #5a61d6; /* Lighter blue on hover */
        box-shadow: 0 6px 15px rgba(76, 81, 191, 0.4); /* Enhanced shadow on hover */
    }
    /* Responsive adjustments for smaller screens */
    @media (max-width: 640px) {
        .form-container {
            padding: 1rem 1.5rem; /* Further reduced padding for mobile */
            border-radius: 0.75rem;
        }
        .text-2xl {
            font-size: 1.5rem; /* Adjust heading size for mobile */
            margin-bottom: 1rem;
        }
    }
</style>
</head>
<body>
<div class="form-container">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Student Form</h2>
    <form action="./form" method="post">
        <div class="mb-3"> <!-- Reduced margin-bottom -->
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" placeholder="Enter name" class="focus:ring-blue-500 focus:border-blue-500">
        </div>

        <div class="mb-3"> <!-- Reduced margin-bottom -->
            <label for="rollNo">Roll No:</label>
            <input type="text" name="roll" id="rollNo" placeholder="Enter roll number" class="focus:ring-blue-500 focus:border-blue-500">
        </div>

        <div class="mb-3"> <!-- Reduced margin-bottom -->
            <label id="branch-label" class="mb-1">Branch:</label> <!-- Reduced margin-bottom -->
            <div class="radio-group flex flex-wrap gap-x-3"> <!-- Reduced gap -->
                <input type="radio" name="branch" value="cse" id="branch-cse"><label for="branch-cse">CSE</label>
                <input type="radio" name="branch" value="aiml" id="branch-aiml"><label for="branch-aiml">AIML</label>
                <input type="radio" name="branch" value="it" id="branch-it"><label for="branch-it">IT</label>
                <input type="radio" name="branch" value="iot" id="branch-iot"><label for="branch-iot">IOT</label>
            </div>
        </div>

        <div class="mb-3"> <!-- Reduced margin-bottom -->
            <label class="mb-1">Gender:</label> <!-- Reduced margin-bottom -->
            <div class="radio-group flex flex-wrap gap-x-3"> <!-- Reduced gap -->
                <input type="radio" name="gender" value="Male" id="gender-male"><label for="gender-male">Male</label>
                <input type="radio" name="gender" value="Female" id="gender-female"><label for="gender-female">Female</label>
                <input type="radio" name="gender" value="Other" id="gender-other"><label for="gender-other">Other</label>
            </div>
        </div>

        <div class="mb-3"> <!-- Reduced margin-bottom -->
            <label class="mb-1">College:</label> <!-- Reduced margin-bottom -->
            <div class="radio-group flex flex-wrap gap-x-3"> <!-- Reduced gap -->
                <input type="radio" name="college" value="acet" id="college-acet"><label for="college-acet">ACET</label>
                <input type="radio" name="college" value="acoe" id="college-acoe"><label for="college-acoe">ACOE</label>
                <input type="radio" name="college" value="aec" id="college-aec"><label for="college-aec">AEC</label>
            </div>
        </div>

        <div class="mb-4"> <!-- Reduced margin-bottom -->
            <label for="city">City:</label>
            <select name="city" id="city" class="focus:ring-blue-500 focus:border-blue-500">
                <option value="Visakhapatnam">Visakhapatnam</option>
                <option value="Vijayawada">Vijayawada</option>
                <option value="Guntur">Guntur</option>
                <option value="Nellore">Nellore</option>
                <option value="Kurnool">Kurnool</option>
                <option value="Tirupati">Tirupati</option>
                <option value="Kakinada">Kakinada</option>
                <option value="Rajahmundry">Rajahmundry</option>
            </select>
        </div>

        <input type="submit" value="Submit" class="submit-button">
    </form>
</div>
</body>
</html>
