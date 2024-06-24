<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navigation Bar Example</title>
    <style>
       body, h1, h2, h3, h4, h5, h6, p, ul, ol, li, dl, dt, dd {
    margin: 0;
    padding: 0;
}

/* Apply box-sizing border-box to all elements */
* {
    box-sizing: border-box;
}

/* Style the navigation bar */
.navbar {
    overflow: hidden;
    background-color: #333;
}

/* Navigation bar links */
.navbar a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}

/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: white;
}
    </style>
</head>
<body>
<h1>Project Management System</h1>
<div class="navbar">
    <a href="#">PMS</a>
    <a href="#">Home</a>
    <a href="add">Add</a>
    <a href="all">All</a>
</div>

</body>
</html>