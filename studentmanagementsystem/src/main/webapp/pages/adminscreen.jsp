<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
      rel="stylesheet">

<style>
body 
{
	background-color: #f5f7fa;
}

.dashboard-card 
{
	height: 180px;                 
	display: flex;
	flex-direction: column;
	justify-content: center;       
	align-items: center;
	transition: transform 0.2s;
	border-radius: 15px;
}

.dashboard-card:hover 
{
	transform: scale(1.05);
}

.dashboard-card h5 
{
	margin-bottom: 20px;
}

.dashboard-card .btn 
{
	width: 120px;                 
}
</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow">
  <div class="container-fluid">

    <a class="navbar-brand d-flex align-items-center" href="#">
      <img src="pictures/logo.webp" height="40" class="me-2 rounded">
      <span class="fw-bold">Admin Panel</span>
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#adminNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="adminNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link text-warning fw-bold" href="/">Logout</a>
        </li>
      </ul>
    </div>

  </div>
</nav>

<div class="container mt-5">
  <h2 class="text-center mb-4">Admin Dashboard</h2>

  <div class="row justify-content-center g-4">

    <div class="col-sm-6 col-md-4 col-lg-3">
      <div class="card dashboard-card shadow">
        <h5>Enroll Student</h5>
        <a href="enrollForm" class="btn btn-success">Enroll</a>
      </div>
    </div>

    <div class="col-sm-6 col-md-4 col-lg-3">
      <div class="card dashboard-card shadow">
        <h5>View Students</h5>
        <a href="view" class="btn btn-primary">View</a>
      </div>
    </div>

  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
