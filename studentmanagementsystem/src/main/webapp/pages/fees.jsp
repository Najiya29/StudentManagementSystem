<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student Fees</title>

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

.glass-card {
    background: rgba(255, 255, 255, 0.9);
    backdrop-filter: blur(8px);
    border-radius: 18px;
    padding: 30px;
}

h2 {
    font-weight: 700;
    color: #0d6efd;
}

.table th {
    width: 40%;
    background-color: #f8f9fa;
}

.btn-update {
    border-radius: 30px;
    padding: 10px 30px;
}
</style>
</head>

<body>

<div class="container d-flex justify-content-center align-items-center py-5">
    <div class="col-lg-8">

        <div class="glass-card shadow-lg">

            <h2 class="text-center mb-4">
                <i class="bi bi-cash-stack"></i> Update Student Fees
            </h2>

            <!-- Student Details -->
            <table class="table table-bordered align-middle">
                <tr>
                    <th>Student ID</th>
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
                    <th>Student Batch Mode</th>
                    <td>${stu.batchMode}</td>
                </tr>
                <tr>
                    <th>Fees Paid</th>
                    <td class="fw-bold text-success">₹ ${stu.feesPaid}</td>
                </tr>
            </table>

            <!-- Update Fees Form -->
            <form action="update" method="post" class="mt-4">

                <input type="hidden" name="studentID" value="${stu.studentID}">

                <div class="mb-3">
                    <label class="form-label fw-semibold">
                        Enter Installment Amount
                    </label>
                    <input type="number" name="amount" class="form-control"
                           placeholder="Enter amount" required>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-update">
                        <i class="bi bi-arrow-repeat"></i> Update Fees
                    </button>
                </div>

            </form>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
