<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students | Admin Panel</title>

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
    ), url("pictures/pic.jpg") no-repeat center center fixed;
    background-size: cover;
}

/* Glass Card */
.glass-card {
    background: rgba(255, 255, 255, 0.94);
    backdrop-filter: blur(12px);
    border-radius: 22px;
    padding: 25px;
    animation: fadeUp 0.6s ease;
}

@keyframes fadeUp {
    from { opacity: 0; transform: translateY(25px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Title */
.page-title {
    font-weight: 700;
    color: #0d6efd;
}

/* Table */
.table {
    font-size: 14px;
}

thead th {
    position: sticky;
    top: 0;
    background: #0d6efd !important;
    color: white;
    text-align: center;
    vertical-align: middle;
    z-index: 10;
}

tbody td {
    text-align: center;
    vertical-align: middle;
}

tbody tr:hover {
    background-color: #f1f5ff;
}

/* Action Buttons */
.action-link {
    text-decoration: none;
    font-weight: 600;
}

.action-link:hover {
    text-decoration: underline;
}

.delete-link {
    color: #dc3545;
}

.delete-link:hover {
    color: #a71d2a;
}

/* Filters */
.filter-bar select,
.filter-bar button {
    border-radius: 12px;
}

/* Back Button */
.btn-back {
    border-radius: 30px;
    padding: 10px 30px;
}
</style>
</head>

<body>

<div class="container py-5">

    <div class="glass-card shadow-lg">

        <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap">
            <h4 class="page-title mb-2">
                <i class="bi bi-people-fill"></i> Student Records
            </h4>

            <form action="searchByMode" method="get" class="row g-2 filter-bar">
                <div class="col-md-4">
                    <select class="form-select" name="batchNo">
                        <option value="">All Batches</option>
                        <option>FDJ-196</option>
                        <option>REG-196</option>
                        <option>FDJ-198</option>
                        <option>REG-198</option>
                        <option>FDJ-195</option>
                        <option>REG-195</option>
                    </select>
                </div>

                <div class="col-md-4">
                    <select name="batchMode" class="form-select">
                        <option value="">All Modes</option>
                        <option>Online</option>
                        <option>Offline</option>
                    </select>
                </div>

                <div class="col-md-4">
                    <button type="submit" class="btn btn-primary w-100">
                        <i class="bi bi-search"></i> Search
                    </button>
                </div>
            </form>
        </div>

        <div class="table-responsive">
            <table class="table table-bordered table-hover align-middle">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Age</th>
                        <th>College</th>
                        <th>Course</th>
                        <th>Batch</th>
                        <th>Mode</th>
                        <th>Fees</th>
                        <th>Edit</th>
                        <th>Delete</th>
                        <th>Fees</th>
                        <th>Batch</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${data}" var="stu">
                        <tr>
                            <td>${stu.studentID}</td>
                            <td>${stu.studentFullName}</td>
                            <td>${stu.studentEmail}</td>
                            <td>${stu.studentAge}</td>
                            <td>${stu.studentCollageName}</td>
                            <td>${stu.studentCourse}</td>
                            <td>${stu.batchNo}</td>
                            <td>${stu.batchMode}</td>
                            <td>₹ ${stu.feesPaid}</td>

                            <td>
                                <a href="editInfo?id=${stu.studentID}" class="action-link text-primary">
                                    <i class="bi bi-pencil-square"></i> Edit
                                </a>
                            </td>

                            <td>
                                <a href="delete?id=${stu.studentID}" class="action-link delete-link"
                                   onclick="return confirm('Are you sure you want to delete this student?');">
                                    <i class="bi bi-trash-fill"></i> Delete
                                </a>
                            </td>

                            <td>
                                <a href="fees?id=${stu.studentID}" class="btn btn-sm btn-outline-success">
                                    <i class="bi bi-wallet2"></i> Pay
                                </a>
                            </td>

                            <td>
                                <a href="batchShift?id=${stu.studentID}" class="action-link text-warning">
                                    <i class="bi bi-arrow-left-right"></i> Shift
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="text-center mt-4">
            <a href="back" class="btn btn-outline-secondary btn-back">
                <i class="bi bi-arrow-left"></i> Back to Admin
            </a>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
