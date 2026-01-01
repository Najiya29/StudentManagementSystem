<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Portal | Student Management System</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
body {
    margin: 0;
    height: 100vh;
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(
        rgba(0,0,0,0.55),
        rgba(0,0,0,0.55)
    ), url("pictures/back.jpg");
    background-size: cover;
    background-position: center;
}

/* Glass Card */
.login-card {
    width: 400px;
    background: rgba(255, 255, 255, 0.92);
    border-radius: 22px;
    padding: 35px;
    animation: fadeIn 0.7s ease-in-out;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(25px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Header */
.portal-title {
    font-weight: 700;
    color: #0d6efd;
}

/* Buttons */
.portal-btn {
    padding: 12px;
    font-size: 16px;
    border-radius: 35px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    transition: 0.3s;
}

.portal-btn:hover {
    transform: scale(1.03);
}
</style>
</head>

<body class="d-flex justify-content-center align-items-center">

<div class="login-card shadow-lg">

    <div class="text-center mb-4">
        <img src="pictures/logo.webp" height="60" class="mb-2 rounded">
        <h4 class="portal-title">Login Portal</h4>
        <p class="text-muted" style="font-size: 14px;">
            Select your role to continue
        </p>
    </div>

    <div class="d-grid gap-3">

        <a href="alog" class="btn btn-primary portal-btn">
            <i class="bi bi-shield-lock-fill"></i> Admin Login
        </a>

        <a href="tlog" class="btn btn-success portal-btn">
            <i class="bi bi-person-badge-fill"></i> Teacher Login
        </a>

        <a href="plog" class="btn btn-warning portal-btn text-dark">
            <i class="bi bi-people-fill"></i> Parent Login
        </a>

        <a href="slog" class="btn btn-info portal-btn text-white">
            <i class="bi bi-mortarboard-fill"></i> Student Login
        </a>

    </div>

</div>

</body>
</html>
