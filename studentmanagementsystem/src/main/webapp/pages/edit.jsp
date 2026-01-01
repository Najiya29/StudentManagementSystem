<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student | Admin Panel</title>

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
    ), url("pictures/view.avif") no-repeat center center fixed;
    background-size: cover;
}

/* Card */
.edit-card {
    border-radius: 22px;
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(10px);
    animation: slideUp 0.6s ease;
}

@keyframes slideUp {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Title */
.page-title {
    font-weight: 700;
    color: #0d6efd;
}

/* Inputs */
.form-control, .form-select {
    height: 48px;
    border-radius: 14px;
    font-size: 14px;
}

.form-control:focus, .form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13,110,253,.25);
}

/* Labels */
.form-label {
    font-weight: 600;
}

/* Buttons */
.btn-update {
    border-radius: 30px;
    padding: 10px 35px;
}

.btn-back {
    border-radius: 30px;
    padding: 10px 30px;
}
</style>
</head>

<body>

<div class="container py-5 d-flex justify-content-center align-items-center">

    <div class="col-lg-8 col-xl-7">

        <div class="card edit-card shadow-lg">
            <div class="card-body p-4 p-md-5">

                <div class="text-center mb-4">
                    <h4 class="page-title">
                        <i class="bi bi-pencil-square"></i> Edit Student Details
                    </h4>
                    <p class="text-muted small">Update student information carefully</p>
                </div>

                <form action="edit" method="post">

                    <input type="hidden" name="studentID" value="${stu.studentID}">

                    <div class="mb-3 fw-semibold text-secondary">Personal Information</div>
                    <div class="row g-3 mb-4">
                        <div class="col-md-6 form-floating">
                            <input type="text" class="form-control" name="studentFullName"
                                   value="${stu.studentFullName}" placeholder="Full Name" required>
                            <label><i class="bi bi-person"></i> Full Name</label>
                        </div>

                        <div class="col-md-6 form-floating">
                            <input type="email" class="form-control" name="studentEmail"
                                   value="${stu.studentEmail}" placeholder="Email" required>
                            <label><i class="bi bi-envelope"></i> Email Address</label>
                        </div>
                    </div>

                    <div class="mb-3 fw-semibold text-secondary">Academic Details</div>
                    <div class="row g-3 mb-4">
                        <div class="col-md-4 form-floating">
                            <input type="number" class="form-control" name="studentAge"
                                   value="${stu.studentAge}" placeholder="Age">
                            <label><i class="bi bi-calendar"></i> Age</label>
                        </div>

                        <div class="col-md-8 form-floating">
                            <input type="text" class="form-control" name="studentCollageName"
                                   value="${stu.studentCollageName}" placeholder="College">
                            <label><i class="bi bi-building"></i> College Name</label>
                        </div>

                        <div class="col-md-6 form-floating">
                            <input type="text" class="form-control" name="studentCourse"
                                   value="${stu.studentCourse}" placeholder="Course">
                            <label><i class="bi bi-book"></i> Course</label>
                        </div>

                        <div class="col-md-3 form-floating">
                            <input type="text" class="form-control" name="batchNo"
                                   value="${stu.batchNo}" placeholder="Batch">
                            <label><i class="bi bi-hash"></i> Batch No</label>
                        </div>

                        <div class="col-md-3 form-floating">
                            <select class="form-select" name="batchMode">
                                <option ${stu.batchMode=='Online'?'selected':''}>Online</option>
                                <option ${stu.batchMode=='Offline'?'selected':''}>Offline</option>
                            </select>
                            <label><i class="bi bi-laptop"></i> Batch Mode</label>
                        </div>

                        <div class="col-md-6 form-floating">
                            <input type="number" class="form-control" name="feesPaid"
                                   value="${stu.feesPaid}" placeholder="Fees">
                            <label><i class="bi bi-currency-rupee"></i> Fees Paid</label>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="view" class="btn btn-outline-secondary btn-back">
                            <i class="bi bi-arrow-left"></i> Back
                        </a>

                        <button type="submit" class="btn btn-primary btn-update">
                            <i class="bi bi-check-circle-fill"></i> Update Student
                        </button>
                    </div>

                </form>

            </div>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
