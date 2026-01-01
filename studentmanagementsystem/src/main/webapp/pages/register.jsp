<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Enrollment | Admin Panel</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(
        rgba(0,0,0,0.45),
        rgba(0,0,0,0.45)
    ), url("pictures/edit.jpeg") no-repeat center center fixed;
    background-size: cover;
}

/* Card */
.enroll-card {
    background: rgba(255, 255, 255, 0.94);
    backdrop-filter: blur(12px);
    border-radius: 22px;
    border: none;
    animation: slideUp 0.6s ease-in-out;
}

@keyframes slideUp {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Heading */
.form-title {
    font-weight: 700;
    color: #0d6efd;
}

/* Inputs */
.form-label {
    font-weight: 600;
    font-size: 14px;
}

.form-control,
.form-select {
    height: 50px;
    border-radius: 14px;
    font-size: 15px;
}

.form-control:focus,
.form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13,110,253,.25);
}

/* Buttons */
.btn-submit {
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    border: none;
    color: white;
    border-radius: 30px;
    padding: 10px 35px;
    font-size: 16px;
}

.btn-submit:hover {
    transform: scale(1.03);
}

.btn-back {
    border-radius: 30px;
    padding: 10px 30px;
}

/* Section Divider */
.section-title {
    font-size: 15px;
    font-weight: 600;
    color: #6c757d;
    border-left: 4px solid #0d6efd;
    padding-left: 10px;
    margin-bottom: 15px;
}
</style>
</head>

<body>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-10 col-xl-9">

            <div class="card enroll-card shadow-lg">
                <div class="card-body p-4 p-md-5">

                    <div class="text-center mb-4">
                        <h4 class="form-title">
                            <i class="bi bi-person-plus-fill"></i> Student Enrollment
                        </h4>
                        <p class="text-muted small">Fill student details carefully</p>
                    </div>

                    <form action="enroll" method="post">

                        <div class="section-title">Personal Information</div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Full Name</label>
                                <input type="text" name="studentFullName" class="form-control" placeholder="Enter full name" required>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Email Address</label>
                                <input type="email" name="studentEmail" class="form-control" placeholder="Enter email" required>
                            </div>
                        </div>

                        <div class="section-title">Academic Details</div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Age</label>
                                <input type="number" name="studentAge" class="form-control" placeholder="Age" required>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Fees Paid</label>
                                <input type="number" name="feesPaid" class="form-control" placeholder="Amount" required>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Batch Mode</label>
                                <select class="form-select" name="batchMode" required>
                                    <option disabled selected>Select Mode</option>
                                    <option>Online</option>
                                    <option>Offline</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">College Name</label>
                                <input type="text" name="studentCollageName" class="form-control" placeholder="College Name" required>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Batch Number</label>
                                <select class="form-select" name="batchNo" required>
                                    <option disabled selected>Select Batch</option>
                                    <option>FDJ-196</option>
                                    <option>REG-196</option>
                                    <option>FDJ-198</option>
                                    <option>REG-198</option>
                                    <option>FDJ-195</option>
                                    <option>REG-195</option>
                                </select>
                            </div>
                        </div>

                        <div class="section-title">Course Selection</div>
                        <div class="mb-4">
                            <div class="form-check form-check-inline me-4">
                                <input class="form-check-input" type="radio" name="studentCourse" value="Java" checked>
                                <label class="form-check-label">Java</label>
                            </div>
                            <div class="form-check form-check-inline me-4">
                                <input class="form-check-input" type="radio" name="studentCourse" value="Python">
                                <label class="form-check-label">Python</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="studentCourse" value="Testing">
                                <label class="form-check-label">Testing</label>
                            </div>
                        </div>

                        <div class="text-center d-flex justify-content-center gap-3">
                            <button type="submit" class="btn btn-submit">
                                <i class="bi bi-check-circle-fill"></i> Submit
                            </button>
                            <a href="back" class="btn btn-outline-secondary btn-back">
                                <i class="bi bi-arrow-left"></i> Back
                            </a>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
