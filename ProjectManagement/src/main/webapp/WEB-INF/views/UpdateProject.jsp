<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Management System</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">PMS</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link active" href="add">Add</a></li>
					<li class="nav-item"><a class="nav-link" href="getAll">All</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	
	
	
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