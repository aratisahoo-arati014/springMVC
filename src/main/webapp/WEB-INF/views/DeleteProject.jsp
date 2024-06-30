<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* Global Styles */
:root {
    --primary-color: #dc3545;
    --secondary-color: #ffffff;
    --border-color: #ced4da;
    --bg-color: #f8f9fa;
    --text-color: #343a40;
    --form-width: 100%;
    --form-max-width: 400px;
    --form-padding: 2rem;
    --input-margin-bottom: 1rem;
    --input-padding: 0.75rem;
    --border-radius: 0.25rem;
    --background-image: url('your-image-path.jpg'); /* Add your image path here */
}

body {
    font-family: 'Arial', sans-serif;
    background: var(--bg-color) url(var(--background-image)) no-repeat center center fixed;
    background-size: cover;
    background-image: url('https://p7.hiclipart.com/preview/223/552/859/button-icon-delete-button-png-image.jpg');
    color: var(--text-color);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.delete {
    width: var(--form-width);
    max-width: var(--form-max-width);
    background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
    padding: var(--form-padding);
    border-radius: var(--border-radius);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: center;
    align-items: center;
}

.delete-form {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

h3 {
    margin-bottom: var(--input-margin-bottom);
    color: var(--primary-color);
}

.form-control {
    width: 100%;
    padding: var(--input-padding);
    margin-bottom: var(--input-margin-bottom);
    border: 1px solid var(--border-color);
    border-radius: var(--border-radius);
    font-size: 1rem;
    text-align: center;
}

.form-control:focus {
    border-color: var(--primary-color);
    outline: none;
    box-shadow: 0 0 5px rgba(220, 53, 69, 0.5);
}

.btn {
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    border-radius: var(--border-radius);
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s;
    border: none;
    color: var(--secondary-color);
    background-color: var(--primary-color);
}

.btn-danger:hover {
    background-color: #c82333;
}

@media (max-width: 576px) {
    .delete {
        padding: 1rem;
    }

    h3 {
        font-size: 1rem;
    }

    .form-control {
        font-size: 0.875rem;
        padding: 0.5rem;
    }

    .btn {
        padding: 0.5rem 1rem;
        font-size: 0.875rem;
    }
}

        </style>

</head>
<body>
<div class="delete">
<form action="deletebyid">
  <h3>Project Id :</h3>
        <input type="number" value="Delete" id="id" name="id">
        <input type="submit">
</form>
</div>
</body>
</html>