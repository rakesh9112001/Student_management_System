<%@page import="com.dao.StudentDao"%>
<%@page import="com.dao.AdminDao"%>
<%@page import="com.dto.Student"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<!-- CSS Styles -->
<style>
    /* Basic body styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f7fc;
        color: #333;
        background-image: url('https://www.shutterstock.com/image-photo/group-happy-diverse-students-sitting-260nw-2507996197.jpg');
    background-size: cover;
            background-position: center;
            background-attachment: fixed;
  
    }

    /* Container to center the form */
    .container {
        max-width: 400px; /* Smaller form width */
        margin: 50px auto;
        padding: 15px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Title and legend styling */
    legend {
        font-size: 20px; /* Smaller font size */
        font-weight: bold;
        color: #4CAF50;
        margin-bottom: 15px;
    }

    h1 {
        text-align: center;
        color: #4CAF50;
        font-size: 24px; /* Slightly smaller heading */
        margin-bottom: 20px;
    }

    /* Form element styling */
    label {
        font-size: 14px; /* Smaller label font */
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
        color: #333;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="date"] {
        width: 100%;
        padding: 8px; /* Smaller padding */
        margin: 5px 0 15px; /* Reduced margin */
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 14px; /* Smaller font size for inputs */
        box-sizing: border-box; /* Include padding in width */
    }

    input[type="submit"],
    input[type="reset"] {
        background-color: #4CAF50;
        color: white;
        font-size: 14px; /* Smaller font size */
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #45a049;
    }

    /* Disable readonly fields to make them look more distinct */
    input[readonly] {
        background-color: #f0f0f0;
        cursor: not-allowed;
    }

    /* Additional form spacing */
    fieldset {
        border: none;
        padding: 15px;
    }

    /* Adjust margin for reset button */
    input[type="reset"] {
        margin-left: 10px;
    }
</style>

</head>
<body>

<!-- Container for the form -->
<div class="container">
    <h1>Update Student</h1>

    <%
        int studentId = Integer.parseInt(request.getParameter("id"));

        // Fetch the student details by ID
        StudentDao sdao = new StudentDao();
        Student sid = sdao.findStudentById(studentId);
    %>

    <!-- Form to update student details -->
    <form action="StudentUpdate" method="post">
        <fieldset>
            <legend>Update Student Information</legend>

            <label for="id">Student ID:</label>
            <input type="text" id="id" name="id" value="<%= sid.getId() %>" readonly="readonly"><br><br>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%= sid.getName() %>" readonly="readonly"><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= sid.getEmail() %>" readonly="readonly"><br>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" value="<%= sid.getPhone() %>"><br>

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" value="<%= sid.getDob() %>"><br>

            <input type="submit" value="Update Student">
            <input type="reset" value="Cancel">
        </fieldset>
    </form>
</div>

</body>
</html>
