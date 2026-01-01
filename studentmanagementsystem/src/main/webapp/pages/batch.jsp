<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Batch Shift</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
body {
	min-height: 100vh;
    background: url("pictures/view.avif") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Segoe UI', sans-serif;
    
}

.card {
    border-radius: 18px;
}

.card-header {
    background: #0d6efd;
    color: white;
    border-radius: 18px 18px 0 0;
}
</style>

</head>

<body>

<div class="container d-flex justify-content-center align-items-center py-5">

    <div class="col-md-8 col-lg-6">
        <div class="card shadow-lg">

            <div class="card-header text-center">
                <h4 class="mb-0">
                    <i class="bi bi-arrow-left-right"></i> Update Student Batch Mode
                </h4>
            </div>

            <div class="card-body">

                <!-- Student Details -->
                <table class="table table-bordered align-middle mb-4">
                    <tr>
                        <th width="45%">Student ID</th>
                        <td>${stu.studentID}</td>
                    </tr>
                    <tr>
                        <th>Student Full Name</th>
                        <td>${stu.studentFullName}</td>
                    </tr>
                    <tr>
                        <th>Student Course</th>
                        <td>${stu.studentCourse}</td>
                    </tr>
                    <tr>
                        <th>Student Batch</th>
                        <td>${stu.batchNo}</td>
                    </tr>
                    <tr>
                        <th>Previous Batch Mode</th>
                        <td>
                            <span class="badge bg-secondary">
                                ${stu.batchMode}
                            </span>
                        </td>
                    </tr>
                </table>

                <!-- Update Form -->
                <form action="updateMode" method="post">

                    <input type="hidden" name="studentID" value="${stu.studentID}">

                    <div class="mb-3">
                        <label class="form-label fw-semibold">
                            <i class="bi bi-pencil-square"></i> Select Updated Batch Mode
                        </label>
                        <select name="batchMode" class="form-select" required>
                            <option disabled selected>-- Select Batch Mode --</option>
                            <option>Online</option>
                            <option>Offline</option>
                        </select>
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="view" class="btn btn-outline-secondary">
                            <i class="bi bi-arrow-left"></i> Back
                        </a>

                        <button type="submit" class="btn btn-warning px-4">
                            <i class="bi bi-check-circle"></i> Update Mode
                        </button>
                    </div>

                </form>

            </div>
        </div>
    </div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
