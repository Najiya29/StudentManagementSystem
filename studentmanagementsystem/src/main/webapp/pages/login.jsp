<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
      rel="stylesheet">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

<style>
body 
{
    margin: 0;
    font-family: 'Roboto', sans-serif;
    background: url("pictures/alogin.webp") no-repeat center center fixed;
    background-size: cover;
}

.blur-bg 
{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    backdrop-filter: blur(4px);
    background-color: rgba(0, 0, 0, 0.35); 
    z-index: -1;
}


.login-card 
{
    width: 420px;
    background: rgba(255, 255, 255, 0.95);
    border-radius: 20px;
    padding: 40px 30px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    position: relative;
    overflow: hidden;
}


.login-card::before,
.login-card::after 
{
    content: '';
    position: absolute;
    border-radius: 50%;
    opacity: 0.3;
}

.login-card::before 
{
    width: 150px;
    height: 150px;
    background: linear-gradient(135deg, #0d6efd, #6f42c1);
    top: -50px;
    right: -50px;
}

.login-card::after 
{
    width: 100px;
    height: 100px;
    background: linear-gradient(135deg, #198754, #0dcaf0);
    bottom: -30px;
    left: -30px;
}

.login-card h3 
{
    text-align: center;
    font-weight: 700;
    color: #0d6efd;
    margin-bottom: 30px;
}

.login-card input 
{
    height: 50px;
    border-radius: 12px;
    border: 1px solid #ced4da;
    padding-left: 15px;
    font-size: 15px;
}

.login-card input:focus 
{
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13,110,253,.25);
}

.login-card button 
{
    height: 50px;
    font-size: 16px;
    border-radius: 12px;
    background: linear-gradient(90deg, #0d6efd, #6f42c1);
    border: none;
    color: #fff;
    font-weight: 500;
    transition: 0.3s;
}

.login-card button:hover 
{
    background: linear-gradient(90deg, #6f42c1, #0d6efd);
    box-shadow: 0 6px 20px rgba(0,0,0,0.2);
}

.login-error 
{
    text-align: center;
    color: #dc3545;
    font-weight: 600;
    margin-bottom: 15px;
    animation: shake 0.5s;
}

@keyframes shake 
{
  0%, 100% { transform: translateX(0); }
  25% { transform: translateX(-5px); }
  50% { transform: translateX(5px); }
  75% { transform: translateX(-5px); }
}
</style>
</head>

<body>

<div class="blur-bg"></div>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="login-card">
        
        <h3>Admin Login</h3>
        
        <c:if test="${not empty login_fail}">
            <div class="login-error">${login_fail}</div>
        </c:if>

        <form action="login" method="post">
            <div class="mb-3">
                <label for="uname" class="form-label">Username</label>
                <input type="text" id="uname" name="username" class="form-control" placeholder="Enter username" required>
            </div>

            <div class="mb-3">
                <label for="pass" class="form-label">Password</label>
                <input type="password" id="pass" name="password" class="form-control" placeholder="Enter password" required>
            </div>

            <div class="d-grid mt-4">
                <button type="submit">Login</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
