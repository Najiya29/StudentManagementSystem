<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>

body 
{
	min-height: 100vh;
	background: url("pictures/view.avif") no-repeat center center fixed;
	background-size: cover;
	font-family: 'Segoe UI', sans-serif;
}

.glass-card 
{
	background: rgba(255, 255, 255, 0.92);
	backdrop-filter: blur(10px);
	border-radius: 18px;
	padding: 25px;
}

h2 
{
	font-weight: 700;
	color: #0d6efd;
	letter-spacing: 0.5px;
}

table 
{
	border-radius: 12px;
	overflow: hidden;
}

thead th 
{
	position: sticky;
	top: 0;
	background: #0d6efd !important;
	color: white;
	text-align: center;
	vertical-align: middle;
}

tbody td 
{
	text-align: center;
	vertical-align: middle;
	font-size: 14px;
}

tbody tr:hover 
{
	background-color: #f1f5ff;
	transition: 0.2s;
}

.btn-delete 
{
	color: #dc3545;
	font-weight: 600;
	text-decoration: none;
}

.btn-delete:hover 
{
	text-decoration: underline;
	color: #a71d2a;
}

.btn-back 
{
	border-radius: 30px;
	padding: 10px 30px;
}
</style>

</head>

<body>

<div class="container py-5">

	<div class="glass-card shadow-lg">

    <h2 class="text-center mb-4">
		<i class="bi bi-people-fill"></i> All Students Data
    </h2>
    
	<form action="searchByMode" method="get" class="row mb-3">
		<div class="col-md-4 ms-auto d-flex gap-2">
			<select name="batchMode" class="form-select">
				<option value="">All Modes</option>
				<option value="Online">Online</option>
				<option value="Offline">Offline</option>
    		</select>

    		<button type="submit" class="btn btn-primary">
				<i class="bi bi-search"></i> Search
    		</button>
 		 </div>
	</form>

    <div class="table-responsive">
    	<table class="table table-bordered table-hover align-middle">
			<thead>
          		<tr>
            		<th>Student ID</th>
					<th>Student Full Name</th>
					<th>Student Email</th>
					<th>Student Age</th>
					<th>Student College Name</th>
					<th>Student Course</th>
					<th>Student Batch Number</th>
					<th>Student Mode</th>
					<th>Student Fees Paid</th>
					<th>Delete</th>
					<th>Update</th>
          		</tr>
        	</thead>

			<tbody>
          		<c:forEach items="${data}" var="stu">
            		<tr>
            			<td>${stu.studentID}</td>
              			<td>${stu.studentFullName}</td>
              			<td>${stu.studentEmail}</td>
              			<td>${stu.studentAge}</td>
              			<td>${stu.studentCollageName}</td>
              			<td>${stu.studentCourse}</td>
              			<td>${stu.batchNo}</td>
              			<td>${stu.batchMode}</td>
              			<td>₹ ${stu.feesPaid}</td>
              			<td><a href="delete?id=${stu.studentID}" class="btn-delete" onclick="return confirm('Are you sure you want to delete this student?');">
              			<i class="bi bi-trash-fill"></i> Delete</a>
              			</td>
              			<td><a href="edit?id=${stu.studentID}">Update</a>
              			</td>
            		</tr>
          		</c:forEach>
			</tbody>
		</table>
    </div>

    <div class="text-center mt-4">
    	<a href="back" class="btn btn-outline-secondary btn-back">
        <i class="bi bi-arrow-left"></i> Back to Admin </a>
    </div>

	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
