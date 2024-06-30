<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
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
    color: #333;
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
    </style>

</head>
<body>

<nav class="navbar">
    <!--<a href="#">PMS</a>-->
    <a href="#">Home</a>
    <a href="add">Add</a>
    <a href="all">All</a>
</nav>
	
	<div class="card border-info mb-3">
		<div class="card-body">

			<br>
			<form action="updatebyid" method="post">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">ID</label>
					<input type="text" class="form-control" id="id" name="id" 
						value="<c:out value="${project.id}" />">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Name</label>
					<input type="text" class="form-control" id="name" name="name"
						value="<c:out value="${project.name}" />">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Description</label>
					<input type="text" class="form-control" id="description" name="description"
						value="<c:out value="${project.description}" />">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Manager</label>
					<input type="text" class="form-control" id="manager" name="manager"
						value="<c:out value="${project.manager}" />">
				</div>
				<br><br>
				<div class="mb-3">
					 <label for="Startdate">Start Date:</label>
                     <input type="date" id="startdate" name="startdate">
        
				</div>
				<br><br>
				<div class="mb-3">
					 <label for="enddate">End date:</label>
                     <input type="date" id="enddate" name="enddate">
				</div>
				<br><br>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Member</label>
					<input type="text" class="form-control" id="member" name="member"
						value="<c:out value="${project.member}" />">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Tasks</label>
					<input type="text" class="form-control" id="tasks" name="tasks"
						value="<c:out value="${project.tasks}" />">
				</div>
				
				<div class="mb-3">
					
           <label for="task">Task Status:</label>
            <select id="task" name="task">
            <option value="To Do">To Do</option>
            <option value="In Progress">In Progress</option>
            <option value="Completed">Completed</option>
        </select>
				</div>
				<div>
					<button type="submit" class="btn btn-primary">Update</button>
				</div>
			</form>
		</div>

	</div>

</body>
</html>