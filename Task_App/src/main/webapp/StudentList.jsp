<%@page import="java.util.List"%>
<%@page import="com.dto.Admin"%>
<%@page import="com.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<!-- CSS Styles -->
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f7fc;
          background-image: url('https://st.depositphotos.com/1252160/2537/i/450/depositphotos_25377453-stock-photo-college-student-study-in-the.jpg');
    
        background-size: cover;
            background-position: center;
            background-attachment: fixed;
        
        
    }

    /* Simple Navbar styles */
    nav {
        background-color: #333;
        padding: 10px;
        text-align: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        font-size: 18px;
        margin: 0 15px;
        padding: 10px 15px;
        border-radius: 4px;
        transition: background-color 0.3s;
    }

    nav a:hover {
        background-color: #4CAF50;
    }

    /* Content area */
    .container {
        margin: 20px;
    }

    .welcome-message {
        background-color: #4CAF50;
        color: white;
        padding: 20px;
        text-align: center;
        margin-bottom: 20px;
        border-radius: 5px;
    }

    /* Table styles */
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    button {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        font-size: 14px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #45a049;
    }

    a {
        text-decoration: none;
    }

</style>

</head>
<body>

<!-- Simple Navbar -->
<nav>
    <a href="studentDashboard.jsp">Student Dashboard</a>
    <a href="logout">Logout</a>
</nav>

<!-- Content -->
<div class="container">
    <!-- Java Code to retrieve student list and admin details -->
    <%
        List<Student> listofStdudent = (List<Student>) session.getAttribute("listofStudent");
        Admin admin = (Admin) request.getSession().getAttribute("admin");
    %>

    <!-- Welcome Message -->
    <div class="welcome-message">
        <h1>Welcome <%= admin.getName() %></h1>
    </div>

    <!-- Student Table -->
    <table>
        <tr>
            <th>S.NO</th>
            <th>St_ID</th>
            <th>St_NAME</th>
            <th>St_Email</th>
            <th>St_PHONE_NUMBER</th>
            <th>St_DOB</th>
            <th>St_GENDER</th>
            <th>UPDATE</th>
            <th>DELETE</th>
        </tr>

        <!-- Loop through students and display data -->
        <%
            int i = 1;
            for (Student s : listofStdudent) {
        %>
        <tr>
            <td><%= i++ %></td>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getPhone() %></td>
            <td><%= s.getDob() %></td>
            <td><%= s.getGender() %></td>
            <td><a href="StudentUpdate.jsp?id=<%= s.getId() %>"><button>UPDATE</button></a></td>
            <td><a href="deleteBranch?id=<%= s.getId() %>"><button>DELETE</button></a></td>
        </tr>
        <%
            }
        %>
    </table>
</div>

</body>
</html>
