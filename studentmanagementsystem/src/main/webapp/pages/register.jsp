<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Enrollment</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
body 
{
	min-height: 100vh;
	background: url("pictures/pic.jpg") no-repeat center center fixed; 
	background-size: cover;
	font-family: 'Segoe UI', sans-serif;
}

.enroll-container 
{
	max-width: 950px;
}

.card 
{
	background: rgba(255, 255, 255, 0.92);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	border: none;
}

.heading 
{
	text-align: center;
	font-weight: 700;
	letter-spacing: 0.5px;
	color: #0d6efd;
	margin-bottom: 30px;
}

.form-label 
{
	font-weight: 600;
	font-size: 14px;
	margin-bottom: 6px;
}

.form-control,
.form-select 
{
	height: 50px;
	border-radius: 14px;
	padding: 10px 15px;
	font-size: 15px;
}

.form-control:focus,
.form-select:focus 
{
	border-color: #0d6efd;
	box-shadow: 0 0 0 0.2rem rgba(13,110,253,.25);
}

.form-check-input 
{
	transform: scale(1.15);
}

.btn-submit 
{
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	border: none;
	color: white;
	border-radius: 30px;
	padding: 10px 35px;
	font-size: 16px;
}

.btn-submit:hover 
{
	opacity: 0.9;
	transform: translateY(-1px);
}

.btn-back 
{
	border-radius: 30px;
	padding: 10px 30px;
}

</style>
</head>

<body>

<section class="enroll py-5">
	<div class="container enroll-container">
    	<div class="row justify-content-center">
        	<div class="col-12">
        		<div class="card shadow-lg">
          			<div class="card-body p-4 p-md-5">
          			<h4 class="heading">
              		<i class="bi bi-person-plus-fill"></i> Student Enrollment Form
            		</h4>

            		<form action="enroll" method="post">
            		
              			<div class="row mb-3">
                			<div class="col-md-6">
                  				<label class="form-label" for="sfn">Full Name</label>
                  				<input type="text" id="sfn" class="form-control" name="studentFullName" placeholder="Enter full name" required>
                			</div>

                			<div class="col-md-6">
                  				<label class="form-label" for="se">Email</label>
                  				<input type="email" id="se" class="form-control" name="studentEmail" placeholder="Enter email" required>
                			</div>
              			</div>

        				<div class="row mb-3">
                			<div class="col-md-4">
                  				<label class="form-label" for="age">Age</label>
                  				<input type="number" id="age" class="form-control" name="studentAge" placeholder="Age" required>
                			</div>

                			<div class="col-md-4">
                  				<label class="form-label" for="fp">Fees Paid</label>
                  				<input type="number" id="fp" class="form-control" name="feesPaid" placeholder="Fees" required>
                			</div>

                			<div class="col-md-4">
                  				<label class="form-label" for="bm">Batch Mode</label>
                  				<select class="form-select" name="batchMode" id="bm"required>
                    				<option disabled selected>Select</option>
                    				<option>Online</option>
                    				<option>Offline</option>
                  				</select>
                			</div>
              			</div>

              			<div class="row mb-3">
                			<div class="col-md-6">
                  				<label class="form-label" for="cn">College Name</label>
                  				<input type="text" id="cn" class="form-control" name="studentCollageName" placeholder="Collage Name" required>
                			</div>

                			<div class="col-md-6">
                  				<label class="form-label" for="bn">Batch Number</label>
                  				<select class="form-select" for="bn" name="batchNo" required>
                    				<option disabled selected>Select</option>
                    				<option>FDJ-196</option>
                    				<option>REG-196</option>
                    				<option>FDJ-198</option>
                    				<option>REG-198</option>
                   					<option>FDJ-195</option>
                    				<option>REG-195</option>
                  				</select>
                			</div>
              			</div>

              			<div class="row mb-4">
                			<div class="col-md-12">
                  				<label class="form-label d-block" for="sc">Course</label>
                  				<div class="form-check form-check-inline me-4">
                    				<input id="sc" class="form-check-input" type="radio" name="studentCourse" value="Java" checked>
                    				<label class="form-check-label">Java</label>
                  				</div>
                  				<div class="form-check form-check-inline me-4">
                    				<input id="sc" class="form-check-input" type="radio" name="studentCourse" value="Python">
                    				<label class="form-check-label">Python</label>
                  				</div>
                  				<div class="form-check form-check-inline">
                    				<input id="sc" class="form-check-input" type="radio" name="studentCourse" value="Testing">
                    				<label class="form-check-label">Testing</label>
                  				</div>
                			</div>
              			</div>

              			<div class="text-center d-flex justify-content-center gap-3">
                			<button type="submit" class="btn btn-submit">
                  			<i class="bi bi-check-circle"></i> Submit
                			</button>

                			<a href="back" class="btn btn-outline-secondary btn-back">
                  			<i class="bi bi-arrow-left"></i> Back to Admin</a>
              			</div>

            		</form>
            	</div>
        	</div>
		</div>
    </div>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
