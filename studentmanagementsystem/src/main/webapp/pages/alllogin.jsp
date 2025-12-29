<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Portal</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body 
{
    margin: 0;
    height: 100vh;
    background-image: url("pictures/back.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.login-card 
{
    background: rgba(255, 255, 255, 0.85);
    border-radius: 20px;
}
</style>
</head>

<body class="d-flex justify-content-center align-items-center">

<div class="card login-card shadow-lg p-4" style="width: 380px;">
    <h3 class="text-center mb-4 fw-bold">Login Portal</h3>

    <div class="d-grid gap-3">
        <a href="alog" class="btn btn-primary btn-lg">Admin Login</a>
        <a href="tlog" class="btn btn-success btn-lg">Teacher Login</a>
        <a href="plog" class="btn btn-warning btn-lg">Parent Login</a>
        <a href="slog" class="btn btn-info btn-lg text-white">Student Login</a>
    </div>
</div>

</body>
</html>
