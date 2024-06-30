<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>Project List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<title>Project Management System</title>
<style type="text/css">
/* Global Styles */
:root {
    --primary-color: #007bff;
    --secondary-color: #6c757d;
    --background-color: #f8f9fa;
    --text-color: #343a40;
    --navbar-height: 60px;
    --modal-background-color: rgba(255, 255, 255, 0.9);
}

body {
    font-family: 'Arial', sans-serif;
    background-color: var(--background-color);
    color: var(--text-color);
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Navbar Styles */
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


/* Modal Styles */
.modal-content {
    background-color: var(--modal-background-color);
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border: none;
}

.modal-header, .modal-footer {
    border: none;
}

.modal-title {
    color: var(--primary-color);
}

.btn-primary {
    background-color: var(--primary-color);
    border: none;
    transition: background-color 0.3s ease-in-out;
}

.btn-primary:hover {
    background-color: darken(var(--primary-color), 10%);
}

.btn-secondary {
    background-color: var(--secondary-color);
    border: none;
    transition: background-color 0.3s ease-in-out;
}

.btn-secondary:hover {
    background-color: darken(var(--secondary-color), 10%);
}

/* Custom Utility Classes */
.hidden {
    display: none;
}

/* Responsive Styles */
@media (max-width: 576px) {
    .navbar {
        flex-direction: column;
        height: auto;
        padding: 10px 0;
    }

    .navbar a {
        padding: 10px 0;
        font-size: 1rem;
    }

    .modal-dialog {
        margin: 1.75rem auto;
    }
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
<div class="modal fade" id="deletePopup" tabindex="-1"
		aria-labelledby="deletePopupLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deletePopupLabel">Deleting...</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Are you sure to delete the Project permanently?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<form action="delete" method="post" name="form">
						<input type="hidden" name="idtodelete" value="checkedCheckbox">
						<button type="button" class="btn btn-primary"
							id="confirmDeleteBtn" onclick="confirmDelete()">Yes</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	</body>
	
			<c:choose>
				<c:when test="${id ne null and id ne 0}">
					<c:if
						test="${successmsg ne null and not empty successmsg}">
						<div class="alert alert-success" role="alert">
							<c:out value='${successmsg}' />
						</div>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if
						test="${failuremsg ne null and not empty failuremsg}">
						<div class="alert alert-danger" role="alert">
							<c:out value='${failuremsg}' />
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${updatecount ne null and updatecount ne 0}">
					<c:if
						test="${updated ne null and not empty updated}">
						<div class="alert alert-success" role="alert">
							<c:out value='${updated}' />
						</div>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if
						test="${notupdated ne null and not empty notupdated}">
						<div class="alert alert-danger" role="alert">
							<c:out value='${notupdated}' />
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${deletecount ne null and deletecount ne 0}">
					<c:if
						test="${deleted ne null and not empty deleted}">
						<div class="alert alert-success" role="alert">
							<c:out value='${deleted}' />
						</div>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if
						test="${notdeleted ne null and not empty notdeleted}">
						<div class="alert alert-danger" role="alert">
							<c:out value='${notdeleted}' />
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
			<br>
			
			<div class="card border-info mb-3">
	<div class="card-body">
		<table
			class="table table-hover caption-top table-bordered border-secondary">
			<caption>List of Projects</caption>
			
			<thead>
				<tr>
					<td colspan="6">
						<div class="d-flex justify-content-end">
							<a class="btn btn-primary me-2" onclick="updateProject()" href="update" role="button">Update</a>
							<a class="btn btn-primary" onclick="deleteProject()" href="delete" role="button">Delete</a>
						
						</div>
					</td>
				</tr>
			<tr>
					<th></th>
					<th>ID</th>
					<th>Name</th>
					<th>Description</th>
					<th>Manager</th>
					<th>Start Date</th>
					<th>End Date </th>
					<th>Member</th>
					<th>Tasks</th>
					<th>Status</th>
				</tr>
			</thead>
			
			<tbody>
				<c:choose>
					<c:when test="${empty projlist}">
						<tr>
							<td colspan="6">No Projects found.</td>
						</tr> 
					</c:when>
					<c:otherwise>
						<tr></tr>
						<c:forEach items="${projlist}" var="project">
							<tr>
								<td align="center"><input type="checkbox" class="project-checkbox"
									value="${project.id}" style="align: middle" onclick="handleCheckboxClick(this)"></td>
								<td><c:out value="${project.id}"/></td>
								<td><c:out value="${project.name}"></c:out></td>
								<td><c:out value="${project.description}"/></td>
								<td><c:out value="${project.manager}"></c:out></td>
								<td><c:out value="${project.startdate}"></c:out></td>
								<td><c:out value="${project.enddate}"></c:out></td>
								<td><c:out value="${project.member}"></c:out></td>
								<td><c:out value="${project.tasks}"></c:out></td>
								<td><c:out value="${project.status}"></c:out></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		</div>
	</div>
</body>

<script>
function handleCheckboxClick(clickedCheckbox) {
    var checkboxes = document.querySelectorAll('.project-checkbox');
    checkboxes.forEach(function(checkbox) {
        if (checkbox !== clickedCheckbox) {
            checkbox.checked = false;
        }
    });
}
function deleteProject() {
    var checkedCheckbox = document.querySelector('.project-checkbox:checked');
    if (checkedCheckbox) {
    	$('#deletePopup').modal('show');
    } else {
        console.log("No project selected for deletion.");
    }
}
function confirmDelete(){
	var checkedCheckbox = document.querySelector('.project-checkbox:checked');
	alert(checkedCheckbox);
	if (checkedCheckbox) {
		document.form.idtodelete.value=checkedCheckbox.value;
		alert(document.form.idtodelete.value);
		document.form.submit();
	}
}

function updateProject() {
    var checkedCheckbox = document.querySelector('.project-checkbox:checked');
    if (checkedCheckbox) {
        var updateUrl = 'getProj?id=' + checkedCheckbox.value;
        window.location.href = updateUrl;
    } else {
        console.log("No Project selected for update.");
    }
}
</script>

</html>
