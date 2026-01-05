<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Batch Mode</title>

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

.batch-card {
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(8px);
    border-radius: 18px;
    overflow: hidden;
}

.batch-header {
    background: linear-gradient(135deg, #0d6efd, #084298);
    color: white;
    padding: 18px;
    text-align: center;
}

.table th {
    width: 45%;
    background-color: #f8f9fa;
    font-weight: 600;
}

.form-select {
    height: 45px;
    border-radius: 10px;
}

.btn-action {
    border-radius: 30px;
    padding: 10px 30px;
    font-weight: 600;
}
</style>
</head>

<body>

<div class="container d-flex justify-content-center align-items-center py-5">
    <div class="col-lg-7 col-md-9">

        <div class="card batch-card shadow-lg">

            <div class="batch-header">
                <h3 class="mb-0">
                    <i class="bi bi-arrow-left-right"></i> Update Student Batch Mode
                </h3>
                <small>Switch between Online and Offline batches</small>
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
                        <th>Current Batch Mode</th>
                        <td>
                            <span class="badge bg-secondary px-3 py-2">
                                ${stu.batchMode}
                            </span>
                        </td>
                    </tr>
                </table>

                <form action="updateMode" method="post">

    			<input type="hidden" name="studentID" value="${stu.studentID}">
    				<div class="mb-4">
        			<label class="form-label fw-semibold">
            			<i class="bi bi-diagram-3"></i> Select New Batch No
        			</label>
        			<select name="batchNo" class="form-select" required>
            			<option disabled selected>-- Select Batch No --</option>
						<option>FDJ-196</option>
            			<option>REG-196</option>
            			<option>FDJ-198</option>
            			<option>REG-198</option>
            			<option>FDJ-195</option>
            			<option>REG-195</option>
        			</select>
    				</div>

    				<div class="d-flex justify-content-between">
        			<a href="view" class="btn btn-outline-secondary btn-action">
            			<i class="bi bi-arrow-left"></i> Back
        			</a>

        			<button type="submit" class="btn btn-warning btn-action">
            			<i class="bi bi-check-circle"></i> Update
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
