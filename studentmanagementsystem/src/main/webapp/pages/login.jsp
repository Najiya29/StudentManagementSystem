<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login | Student Management System</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    font-family: 'Poppins', sans-serif;
    background: url("pictures/alogin.webp") no-repeat center center fixed;
    background-size: cover;
}

/* Dark overlay */
.overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.55);
    backdrop-filter: blur(6px);
}

/* Login card */
.login-card {
    width: 420px;
    background: #ffffff;
    border-radius: 20px;
    padding: 35px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.35);
    animation: fadeInUp 0.6s ease;
}

/* Logo circle */
.login-icon {
    width: 75px;
    height: 75px;
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 32px;
    margin: -70px auto 20px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
}

.login-card h4 {
    text-align: center;
    font-weight: 700;
    margin-bottom: 25px;
}

/* Input */
.form-control {
    height: 48px;
    border-radius: 12px;
    font-size: 14px;
}

.form-control:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.15rem rgba(13,110,253,.25);
}

/* Button */
.btn-login {
    height: 48px;
    border-radius: 30px;
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    border: none;
    font-weight: 600;
    transition: 0.3s;
}

.btn-login:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

/* Error */
.login-error {
    text-align: center;
    color: #dc3545;
    font-weight: 600;
    margin-bottom: 15px;
    animation: shake 0.4s;
}

/* Animations */
@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes shake {
  0%,100% { transform: translateX(0); }
  25% { transform: translateX(-4px); }
  50% { transform: translateX(4px); }
  75% { transform: translateX(-4px); }
}
</style>
</head>

<body>

<div class="overlay"></div>

<div class="container d-flex justify-content-center align-items-center vh-100 position-relative">

    <div class="login-card">

        <div class="login-icon">
            <i class="bi bi-shield-lock-fill"></i>
        </div>

        <h4>Admin Login</h4>

        <c:if test="${not empty login_fail}">
            <div class="login-error">${login_fail}</div>
        </c:if>

        <form action="login" method="post">

            <div class="mb-3">
                <label class="form-label fw-semibold">Username</label>
                <input type="text" name="username" class="form-control"
                       placeholder="Enter admin username" required>
            </div>

            <div class="mb-4">
                <label class="form-label fw-semibold">Password</label>
                <input type="password" name="password" class="form-control"
                       placeholder="Enter password" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-login text-white">
                    <i class="bi bi-box-arrow-in-right"></i> Login
                </button>
            </div>

        </form>

        <p class="text-center text-muted mt-4 mb-0" style="font-size:13px;">
            © 2026 Student Management System
        </p>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
