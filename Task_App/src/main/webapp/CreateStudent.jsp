<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Student</title>

<!-- External Google Font for better typography -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
    /* Overall page style with background image */
    body {
        font-family: 'Poppins', sans-serif; /* Use a modern font */
        background: url('https://img.freepik.com/premium-photo/children-walking-down-sidewalk-with-books-school-supplies_1316263-133488.jpg?w=360') no-repeat center center fixed;
        background-size: cover; /* Ensures the background covers the entire screen */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff; /* White text color for better contrast with background */
    }

    /* Container for the form with reduced size and less transparency */
    form {
        background-color: rgba(255, 255, 255, 0.95); /* More opaque (less transparent) background */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px; /* Reduced width */
    }

    /* Fieldset styling with more opaque background */
    fieldset {
        border: 2px solid rgba(76, 175, 80, 0.7); /* Semi-transparent green border */
        padding: 15px;  /* Reduced padding inside fieldset */
        background-color: rgba(255, 255, 255, 0.95); /* Less transparent background */
    }

    /* Legend styling */
    legend {
        font-size: 1.3em; /* Slightly smaller font size */
        color: #4CAF50;
        font-weight: 600;
    }

    /* Styling for labels and inputs */
    label {
        display: block;
        margin-bottom: 6px;  /* Reduced margin */
        color: #333;
        font-size: 0.9em; /* Reduced font size */
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="tel"],
    input[type="date"] {
        width: 100%;
        padding: 8px;  /* Reduced padding */
        margin: 8px 0;  /* Reduced margin */
        border: 1px solid rgba(0, 0, 0, 0.2); /* Transparent border */
        border-radius: 4px;
        font-size: 0.9em;  /* Reduced font size */
        background-color: rgba(255, 255, 255, 0.8); /* Less transparent background for inputs */
    }

    /* Radio buttons styling */
    input[type="radio"] {
        margin-right: 5px;
        font-size: 0.9em; /* Reduced font size */
    }

    /* Submit and reset buttons with transparency */
    input[type="submit"],
    input[type="reset"] {
        background-color: rgba(76, 175, 80, 0.9); /* Transparent green */
        border: none;
        color: white;
        padding: 10px 22px; /* Reduced padding */
        font-size: 14px;  /* Reduced font size */
        cursor: pointer;
        border-radius: 5px;
        margin-top: 10px;
        transition: background-color 0.3s ease;
    }

    /* Hover effect for buttons */
    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: rgba(76, 175, 80, 1); /* Solid green on hover */
    }

    /* Add some space between the buttons */
    input[type="submit"] {
        margin-right: 10px;
    }

    /* Styling for the form on mobile devices */
    @media (max-width: 600px) {
        form {
            width: 90%;
            padding: 15px;  /* Further reduce padding on mobile */
        }
    }
</style>

</head>
<body>

<!-- Form for creating a student -->
<form action="createStudent">
    <fieldset>
        <legend>Create Student</legend>
        
        <!-- Name Input -->
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required><br>
        
        <!-- Email Input -->
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required><br>
        
        <!-- Password Input -->
        <label for="pass">Password:</label>
        <input type="password" name="pass" id="pass" required><br>
        
        <!-- Phone Input -->
        <label for="phone">Phone:</label>
        <input type="tel" name="phone" id="phone" required><br>
        
        <!-- Date of Birth Input -->
        <label for="dob">DOB:</label>
        <input type="date" name="dob" id="dob" required><br>
        
        <!-- Gender Options -->
        <label>Gender:</label>
        <input type="radio" name="gender" value="male" id="male" required>Male
        <input type="radio" name="gender" value="female" id="female" required>Female<br>
        
        <!-- Submit and Reset Buttons -->
        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </fieldset>
</form>

</body>
</html>
