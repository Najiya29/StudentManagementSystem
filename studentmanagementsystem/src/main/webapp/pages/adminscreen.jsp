<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard | Student Management System</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Poppins', sans-serif;
    background: #f4f6f9;
}

/* Navbar brand */
.navbar-brand span {
    font-size: 18px;
}

/* Page heading */
.page-title {
    font-weight: 700;
    margin-bottom: 30px;
}

/* Dashboard cards */
.dashboard-card {
    height: 190px;
    border-radius: 18px;
    border: none;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: 0.3s;
    cursor: pointer;
}

.dashboard-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.15);
}

/* Card icons */
.dashboard-icon {
    font-size: 42px;
    margin-bottom: 12px;
}

/* Buttons */
.btn-dashboard {
    border-radius: 30px;
    padding: 8px 28px;
    font-size: 14px;
}

/* Card colors */
.bg-enroll {
    background: linear-gradient(135deg, #198754, #20c997);
    color: white;
}

.bg-view {
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    color: white;
}
</style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="dashboard">
      <img src="pictures/logo.webp" height="40" class="me-2 rounded">
      <span class="fw-bold">Admin Panel</span>
    </a>

    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#adminNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="adminNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link text-warning fw-semibold" href="/">
            <i class="bi bi-box-arrow-right"></i> Logout
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container py-5">

  <h3 class="text-center page-title">
    <i class="bi bi-speedometer2"></i> Admin Dashboard
  </h3>

  <div class="row g-4 justify-content-center">

    <!-- Enroll Student -->
    <div class="col-md-4">
      <div class="card dashboard-card bg-enroll text-center">
        <div>
          <div class="dashboard-icon">
            <i class="bi bi-person-plus-fill"></i>
          </div>
          <h5 class="fw-semibold">Enroll Student</h5>
          <p class="mb-3" style="font-size:14px;">
            Register new students
          </p>
          <a href="enrollForm" class="btn btn-light btn-dashboard">
            Enroll
          </a>
        </div>
      </div>
    </div>

    <div class="col-md-4">
      <div class="card dashboard-card bg-view text-center">
        <div>
          <div class="dashboard-icon">
            <i class="bi bi-people-fill"></i>
          </div>
          <h5 class="fw-semibold">View Students</h5>
          <p class="mb-3" style="font-size:14px;">
            Manage student records
          </p>
          <a href="view" class="btn btn-light btn-dashboard">
            View
          </a>
        </div>
      </div>
    </div>

  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
