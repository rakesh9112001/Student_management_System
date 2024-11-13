<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>

<!-- External Google Font for better typography -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif; /* Use Poppins font for a modern look */
        background-color: #f4f7fc; /* Soft background color */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    h1 {
        text-align: center;
        color: #333;
        font-size: 2.5em;
        margin-bottom: 30px;
    }

    .container {
        text-align: center;
        padding: 30px;
        border-radius: 8px;
        background-color: #fff;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
    }

    button {
        background-color: #4CAF50; /* Green button */
        border: none;
        color: white;
        padding: 15px 32px;
        font-size: 18px;
        cursor: pointer;
        border-radius: 5px;
        margin: 10px;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    button:hover {
        background-color: #45a049; /* Darker green on hover */
    }

    button a {
        text-decoration: none;
        color: white; /* Make the link text white */
        display: block;
    }

    button a:hover {
        color: #e0e0e0; /* Lighten the link text when hovering over the button */
    }
</style>

</head>
<body>

<div class="container">
    <h1>Student Management</h1>

    <button><a href="CreateStudent.jsp">Create Student</a></button><br>
    <button><a href="findallStudent">Find All Students</a></button><br>
    <button><a href="logout">Logout</a></button><br>

</div>

</body>
</html>
