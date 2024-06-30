<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navigation Bar Example</title>
    <style>
  body {
    margin: 0;
    padding: 0;
    background-image: url('https://wallpaperaccess.com/full/5137791.jpg'); /* Replace 'background-image.jpg' with the path to your background image */
    font-family: Arial, sans-serif;
    background-color: #f0f0f0; /* Set a light background color */
}

.home {
    max-width: 800px; /* Set a maximum width for the content */
    margin: 0 auto; /* Center the content horizontally */
    padding: 20px;
}

h1 {
    text-align: center;
    color: white; /* Set text color */
}

.navbar {
    background-color: #333; /* Set navbar background color */
    padding: 10px;
    border-radius: 5px; /* Add some border radius for a rounded appearance */
}

.navbar a {
    color: white;
    text-decoration: none;
    margin: 0 10px;
    font-size: 18px;
    transition: color 0.3s; /* Smooth color transition on hover */
}

.navbar a:hover {
    color: #ffcc00; /* Change color on hover */
}


    </style>
</head>
<body>
<div class="home">
<h1>Project Management System</h1>
<nav class="navbar">
    <!--<a href="#">PMS</a>-->
    <a href="#">Home</a>
    <a href="add">Add</a>
    <a href="all">All</a>
</nav>
</div>
</body>
</html>