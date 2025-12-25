<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
      rel="stylesheet">
</head>

<body class="bg-light">
      <marquee class="text-danger mb-3  fs-1 "> ${login_fail} </marquee> 
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow p-4" style="width: 350px;">
        <h3 class="text-center mb-3">Login</h3>

        <form action="login" method="post">
            <div class="mb-3">
                <label for="uname" class="form-label">Username</label>
                <input type="text" id="uname" name="username"
                       class="form-control"
                       placeholder="Enter Username">
            </div>

            <div class="mb-3">
                <label for="pass" class="form-label">Password</label>
                <input type="password" id="pass" name="password"
                       class="form-control"
                       placeholder="Enter Password">
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-primary">
                    Login
                </button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
