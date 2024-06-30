<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Management System</title>
    <style type="text/css">
    body {
    font-family: Arial, sans-serif;
    background-image: url('https://wallpaperaccess.com/full/5137816.jpg'); /* Replace 'background-image.jpg' with the path to your background image */
    margin: 0;
    padding: 20px;
}

h2 {
    color: white ;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 500px; /* Adjust the maximum width as needed */
    margin: 0 auto;
}

label {
    font-weight: bold;
}

input[type="text"],
input[type="date"],
input[type="number"],
textarea,
select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

textarea {
    height: 100px; /* Adjust height as needed */
}

select {
    cursor: pointer;
}

input[type="submit"] {
    background-color: #4caf50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.category {
    display: inline-block;
    width: 48%; /* Adjust width as needed */
}

.category label {
    display: block;
    margin-bottom: 5px;
}

.category input {
    width: calc(100% - 20px); /* Adjust width as needed */
    margin-bottom: 10px;
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
    color: #ffcc00;}
 
 .task {
    text-align: center;
  text-colour: white;
  
}
    </style>
</head>
<body>
<nav class="navbar">
    <!--<a href="#">PMS</a>-->
    <a href="home">Home</a>
    <a href="add">Add</a>
    <a href="all">All</a>
</nav>


<div class="task">
    <h2>Add New Task</h2>
    </div>
    <form action="save" method="post">
   
        <label for="name">Task Name:</label><br>
        <input type="text" id="name" name="name"><br><br>
        
        <label for="description">Task Description:</label><br>
        <textarea id="description" name="description"></textarea><br><br>
        
         <label for="name">Manager:</label><br>
        <input type="text" id="manager" name="manager"><br><br>
        
         <label for="Startdate">Start Date:</label><br>
        <input type="date" id="startdate" name="startdate"><br><br>
        
         <label for="enddate">End date:</label><br>
        <input type="date" id="enddate" name="enddate"><br><br>
        
         <label for="member">Team Member:</label><br>
        <textarea  type="text" id="member" name="member"></textarea><br><br>      
        
        <label for="tasks">Task Status:</label><br>
        <select id="tasks" name="tasks">
            <option value="To Do">To Do</option>
            <option value="In Progress">In Progress</option>
            <option value="Completed">Completed</option>
        </select><br><br>
     
    <label for="name">Project Status:</label><br>
    <input type="text" id="status" name="status"><br><br>
        
        <input type="submit" value="Add Task">
    </form>
</body>
</html>