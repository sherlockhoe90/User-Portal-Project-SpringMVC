<%--
  Created by IntelliJ IDEA.
  User: ND
  Date: 05/09/2023
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register User</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <style>
        body {
            background-color: #007bff;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            background-attachment: fixed; /* Keep the background fixed while scrolling */
        }

        .navbar {
            background-color: #eaeaea; /* Use a soothing color of your choice */
        }

        .navbar-brand {
            font-size: 24px; /* Adjust the font size as desired */
            font-family: Arial, sans-serif; /* Use a relevant font */
            color: #333333; /* Use a color that complements the background */
        }

    </style>



</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark"
     style="background-color: rgba(0, 0, 0, 0.5);">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">User Portal Project</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="register">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container p-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Registration Page</h3>
                    <c:if test="${not empty msg}">
                        <h5 class="text-success">${msg}</h5>
                        <c:remove var="msg"/>
                    </c:if>
                </div>
                <div class="card-body">
                    <form action="registerUser" method="post">
                        <div class="md-3">
                            <label>Enter Full Name</label>
                            <input type="text" name="fullName" required="required" class="form-control">
                        </div>

                        <div class="md-3">
                            <label>Enter Email</label>
                            <input type="email" name="email" required="required" class="form-control">
                        </div>

                        <div class="md-3">
                            <label for="password">Enter Password</label>
                            <input type="password" id="password" name="password" required="required"
                                   class="form-control"/>
                        </div>

                        <div id="addressContainer">
                            <div class="md-3">
                                <h5>Address 1</h5>
                                <label>Enter Permanent Address</label>
                                <input type="text" name="address[0].permanenetAddress" required="required"
                                       class="form-control" placeholder="Permanent Address">
                                <br>
                                <label>Enter Temporary Address</label>
                                <input type="text" name="address[0].temporaryAddress" required="required"
                                       class="form-control" placeholder="Temporary Address">
                                <br>
                                <label>Enter Street</label>
                                <input type="text" name="address[0].streetAddress" required="required"
                                       class="form-control" placeholder="Street Address">
                                <br>
                                <label>Enter City</label>
                                <input type="text" name="address[0].city" required="required"
                                       class="form-control" placeholder="City">
                                <br>
                                <label>Enter State/Province</label>
                                <input type="text" name="address[0].stateProvince" required="required"
                                       class="form-control" placeholder="State/Province">
                                <br>
                                <label>Enter Country</label>
                                <input type="text" name="address[0].country" required="required"
                                       class="form-control" placeholder="Country">
                            </div>
                        </div>

                        <div class="md-3">
                            <button id="addAddress" type="button" class="btn btn-primary">Add Address</button>
                            <button id="removeAddress" type="button" class="btn btn-danger">Remove Address</button>
                        </div>

                        <div class="md-3">
                            <label>Enter userType</label>
                            <select name="userType" class="form-control">
                                <option value="user">user</option>
                                <option value="admin">admin</option>
                            </select>
                        </div>

                        <br>
                        <button class="btn btn-primary col-md-12">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById("addAddress").addEventListener("click", function () {
        var addressContainer = document.getElementById("addressContainer");
        var addressCount = addressContainer.getElementsByClassName("md-3").length + 1;

        var addressSection = document.createElement("div");
        addressSection.className = "md-3";

        var addressHeading = document.createElement("h5");
        addressHeading.innerText = "Address " + addressCount;

        var labels = ["Permanent Address", "Temporary Address", "Street", "City", "State/Province", "Country"];
        var names = ["permanenetAddress", "temporaryAddress", "streetAddress", "city", "stateProvince", "country"];

        addressSection.appendChild(addressHeading);

        for (var i = 0; i < labels.length; i++) {
            var label = document.createElement("label");
            label.innerText = "Enter " + labels[i];

            var input = document.createElement("input");
            input.type = "text";
            input.name = "address[" + (addressCount - 1) + "]." + names[i];
            input.required = "required";
            input.className = "form-control";
            input.placeholder = labels[i];

            addressSection.appendChild(label);
            addressSection.appendChild(input);
            addressSection.appendChild(document.createElement("br"));
        }

        addressContainer.appendChild(addressSection);
    });

    document.getElementById("removeAddress").addEventListener("click", function () {
        var addressContainer = document.getElementById("addressContainer");
        var addressCount = addressContainer.getElementsByClassName("md-3").length;

        if (addressCount > 1) {
            addressContainer.removeChild(addressContainer.lastChild);
        }
    });
</script>
</body>
</html>
