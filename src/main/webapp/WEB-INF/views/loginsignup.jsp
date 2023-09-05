<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 05/09/2023
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <style>
        body {
            /*background-image: url('https://images.alphacoders.com/125/1253603.jpg');*/
            background-color: lightgreen;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.5);
        }

        .navbar-brand {
            font-size: 24px;
            color: #fff;
        }

        .navbar-dark .navbar-toggler-icon {
            background-color: #fff;
        }

        .navbar-nav .nav-link {
            color: #fff;
            margin-right: 15px;
        }

        .navbar-nav .nav-link:hover {
            color: #eaeaea;
        }

        .container {
            padding-top: 100px;
            text-align: center;
        }

        .jumbotron {
            background-color: rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
            color: #fff;
        }

        .jumbotron h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #52595e;
            border-color: #52595e;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">User Portal Project</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="register">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="jumbotron">
        <h1>Welcome to Our Portal</h1>
        <p>Manage your account/organization with our product.</p>
        <a class="btn btn-primary" href="register">Get Started</a>
        <a class="btn btn-secondary" href="login">Log In</a>
    </div>
</div>

</body>
</html>
