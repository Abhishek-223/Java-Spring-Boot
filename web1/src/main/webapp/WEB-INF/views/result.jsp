<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Result</title>
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
        padding: 1rem; /* Add some padding for smaller screens */
        box-sizing: border-box; /* Include padding in element's total width and height */
    }
    .result-container {
        background-color: #ffffff;
        padding: 2.5rem;
        border-radius: 1rem; /* Rounded corners */
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1); /* Soft shadow */
        width: 100%;
        max-width: 500px; /* Max width for larger screens */
        text-align: center; /* Center content within the container */
    }
    h2 {
        color: #1a202c; /* Dark heading color */
        margin-bottom: 1.5rem;
        font-size: 2rem; /* Larger heading */
        font-weight: 700; /* Bold heading */
    }
    p {
        color: #4a5568; /* Darker gray for text */
        font-size: 1.1rem;
        margin-bottom: 0.75rem;
        text-align: left; /* Align text to left for better readability */
        padding-left: 1rem; /* Indent paragraphs slightly */
        padding-right: 1rem;
    }
    p strong {
        color: #2d3748; /* Even darker for strong text */
        min-width: 100px; /* Ensure consistent alignment for labels */
        display: inline-block; /* Allow min-width to work */
    }
    /* Responsive adjustments for smaller screens */
    @media (max-width: 640px) {
        .result-container {
            padding: 1.5rem;
            border-radius: 0.75rem;
        }
        h2 {
            font-size: 1.75rem; /* Adjust heading size */
        }
    }
</style>
</head>
<body>
<div class="result-container">
   <h2 class="text-2xl font-bold text-gray-800 mb-6">Form Submission Result</h2>
    <p><strong>Name:</strong> ${name}</p>
    <p><strong>Roll No:</strong> ${roll}</p>
    <p><strong>Branch:</strong> ${branch}</p>
    <p><strong>Gender:</strong> ${gender}</p>
    <p><strong>College:</strong> ${college}</p>
    <p><strong>City:</strong> ${city}</p>
</div>
</body>
</html>
