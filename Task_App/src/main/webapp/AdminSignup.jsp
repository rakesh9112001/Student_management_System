<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


    <meta charset="UTF-8">
    <title>Welcome to Admin Signup</title>
      
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Background Styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.vidyalayaschoolsoftware.com/webassets/images/school_software_4.png'); 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        /* Centering content (Welcome message and form) */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
        }

        /* Content Box Styling */
        .content {
            background-color: rgba(255, 255, 255, 0.3); /* Make the form background semi-transparent */
            backdrop-filter: blur(10px); /* Apply the blur effect to the background */
            border-radius: 10px;
            padding: 20px;
            width: 100%;
            max-width: 400px; /* More compact form */
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Title Styling */
        h1 {
            font-size: 2rem; /* Smaller title size */
            color: #333;
            margin-bottom: 20px;
        }

        /* Navigation Bar */
        nav {
            background-color: #333;
            padding: 15px;
            text-align: center;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
        }

        nav a:hover {
            background-color: #575757;
            border-radius: 5px;
        }

        /* Form Styling */
        form {
            width: 100%;
        }

        fieldset {
            border: none;
            padding: 15px;
        }

        legend {
            font-size: 1.4rem;
            color: #333;
            padding: 5px;
            border: 2px solid #333;
            border-radius: 5px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin-top: 10px;
            width: 100%;
        }

        button[type="reset"] {
            background-color: #f44336;
        }

        button:hover {
            background-color: #45a049;
        }

        button[type="reset"]:hover {
            background-color: #e53935;
        }

        /* Link Styling */
        p {
            text-align: center;
            font-size: 14px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            nav {
                padding: 10px;
            }

            nav a {
                font-size: 14px;
                padding: 8px 15px;
            }

            .container {
                padding: 10px;
            }

            .content {
                width: 90%; /* Adjust content width on small screens */
                padding: 20px;
            }

            input[type="text"], input[type="email"], input[type="password"] {
                padding: 10px; /* Adjust input padding */
            }

            button {
                padding: 10px 15px;
            }
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav>
        <a href="index.jsp">Home</a>
        <a href="AdminSignup.jsp">Sign Up</a>
        <a href="AdminLogin.jsp">Login</a>
    </nav>

    <!-- Main Content Container -->
    <div class="container">
        <div class="content">
            <!-- Welcome Message -->
            <h1>Welcome to the Student</h1>

            <!-- Admin Signup Form -->
            <form action="Adminsign">
                <fieldset>
                    <legend>Admin Signup</legend>

                     <!-- Name input -->
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required><br>

                    <!-- Email input -->
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required><br>

                    <!-- Password input -->
                    <label for="pass">Password:</label>
                    <input type="password" id="pass" name="pass" required><br>

                    <!-- Submit and Reset buttons -->
                    <button type="submit">Submit</button>
                    <button type="reset">Cancel</button>
                </fieldset>

                <!-- Login redirect link -->
                <p>You have an account? <a href="AdminLogin.jsp">Login here</a></p>
            </form>
        </div>
    </div>

</body>
</html>
