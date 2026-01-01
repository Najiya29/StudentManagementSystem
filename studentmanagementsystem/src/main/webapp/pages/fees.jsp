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
    background: linear-gradient(
        rgba(0,0,0,0.4),
        rgba(0,0,0,0.4)
    ), url("pictures/view.avif") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Segoe UI', sans-serif;
}

/* Glass Card */
.fees-card {
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(8px);
    border-radius: 18px;
    overflow: hidden;
}

/* Header */
.card-header-custom {
    background: linear-gradient(135deg, #0d6efd, #084298);
    color: white;
    padding: 20px;
    text-align: center;
}

/* Table Styling */
.table th {
    width: 35%;
    background-color: #f8f9fa;
    font-weight: 600;
}

/* Input */
.form-control {
    height: 45px;
    border-radius: 10px;
}

/* Button */
.btn-update {
    border-radius: 30px;
    padding: 10px 35px;
    font-weight: 600;
}

/* Fees Highlight */
.fees-amount {
    font-size: 1.1rem;
    font-weight: 700;
    color: #198754;
}
</style>
</head>

<body>

<div class="container d-flex justify-content-center align-items-center py-5">
    <div class="col-lg-8 col-md-10">

        <div class="card fees-card shadow-lg">

            <!-- Card Header -->
            <div class="card-header-custom">
                <h3 class="mb-0">
                    <i class="bi bi-cash-stack"></i> Update Student Fees
                </h3>
                <small>Manage student installment payments</small>
            </div>

            <div class="card-body p-4">

                <table class="table table-bordered align-middle mb-4">
                    <tr>
                        <th>Student ID</th>
                        <td>${stu.studentID}</td>
                    </tr>
                    <tr>
                        <th>Full Name</th>
                        <td>${stu.studentFullName}</td>
                    </tr>
                    <tr>
                        <th>Course</th>
                        <td>${stu.studentCourse}</td>
                    </tr>
                    <tr>
                        <th>Batch No</th>
                        <td>${stu.batchNo}</td>
                    </tr>
                    <tr>
                        <th>Batch Mode</th>
                        <td>
                            <span class="badge bg-info text-dark">
                                ${stu.batchMode}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th>Fees Paid</th>
                        <td class="fees-amount">
                            ₹ ${stu.feesPaid}
                        </td>
                    </tr>
                </table>

                <form action="update" method="post">

                    <input type="hidden" name="studentID" value="${stu.studentID}">

                    <div class="mb-4">
                        <label class="form-label fw-semibold">
                            <i class="bi bi-currency-rupee"></i> Installment Amount
                        </label>
                        <input type="number"
                               name="amount"
                               class="form-control"
                               placeholder="Enter installment amount"
                               required>
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="view" class="btn btn-outline-secondary">
                            <i class="bi bi-arrow-left"></i> Back
                        </a>

                        <button type="submit" class="btn btn-primary btn-update">
                            <i class="bi bi-arrow-repeat"></i> Update Fees
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
