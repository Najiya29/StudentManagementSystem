<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
    min-height: 100vh;
    background: 
      
        url("pictures/view.avif") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Segoe UI', sans-serif;
}

.edit-card {
    border-radius: 16px;
    background: rgba(255, 255, 255, 0.96);
    backdrop-filter: blur(6px);
}

/* Input styling */
.form-control, .form-select {
    height: 44px;
    border-radius: 10px;
    border: 1px solid #ced4da;
    font-size: 14px;
}

/* Label styling */
.form-label {
    font-weight: 600;
    color: #495057;
}

/* Focus effect */
.form-control:focus, .form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.15rem rgba(13,110,253,.25);
}

</style>

</head>
<body>

<div class="container d-flex justify-content-center align-items-center py-5">

    <div class="card edit-card shadow-lg col-md-7 col-lg-6">
        <div class="card-body p-4">

            <h3 class="text-center mb-4 text-primary fw-bold">
                <i class="bi bi-pencil-square"></i> Update Student Information
            </h3>

            <form action="edit" method="post">

                <!-- Hidden Student ID -->
                <input type="hidden" name="studentID" value="${stu.studentID}">

    			<div class="row g-4">
			
				    <div class="col-md-6 form-floating">
        				<input type="text" class="form-control" id="fullName" name="studentFullName" placeholder="Full Name" value="${stu.studentFullName}" required>
        				<label for="fullName"><i class="bi bi-person"></i> Student Full Name</label>
    				</div>

			    	<div class="col-md-6 form-floating">
        				<input type="email" class="form-control" id="email" name="studentEmail" placeholder="Email" value="${stu.studentEmail}" required>
        				<label for="email"><i class="bi bi-envelope"></i> Student Email ID</label>
    				</div>

				    <div class="col-md-4 form-floating">
        				<input type="number" class="form-control" id="age" name="studentAge" placeholder="Age" value="${stu.studentAge}">
        				<label for="age"><i class="bi bi-calendar"></i> Student Age</label>
    				</div>

				    <div class="col-md-8 form-floating">
        				<input type="text" class="form-control" id="college" name="studentCollageName" placeholder="College" value="${stu.studentCollageName}">
        				<label for="college"><i class="bi bi-building"></i>Student College Name</label>
    				</div>

				    <div class="col-md-6 form-floating">
       					<input type="text" class="form-control" id="course" name="studentCourse" placeholder="Course" value="${stu.studentCourse}">
        				<label for="course"><i class="bi bi-book"></i> Course Name</label>
    				</div>

				    <div class="col-md-3 form-floating">
        				<input type="text" class="form-control" id="batchNo" name="batchNo" placeholder="Batch No" value="${stu.batchNo}">
        				<label for="batchNo"><i class="bi bi-hash"></i> Batch No</label>
    				</div>

				    <div class="col-md-3 form-floating">
        				<select class="form-select" id="batchMode" name="batchMode">
            				<option value="">Select</option>
            				<option ${stu.batchMode=='Online'?'selected':''}>Online</option>
            				<option ${stu.batchMode=='Offline'?'selected':''}>Offline</option>
        				</select>
        				<label for="batchMode"><i class="bi bi-laptop"></i> Batch Mode</label>
    				</div>

    				<div class="col-md-6 form-floating">
        				<input type="number" class="form-control" id="fees" name="feesPaid" placeholder="Fees" value="${stu.feesPaid}">
        				<label for="fees"><i class="bi bi-currency-rupee"></i> Fees Paid</label>
    				</div>
    			</div>

                <div class="d-flex justify-content-between mt-4">
                    <a href="view" class="btn btn-outline-secondary">
                    <i class="bi bi-arrow-left"></i>Back
                    </a>

                    <button type="submit" class="btn btn-primary px-4">
                        <i class="bi bi-check-circle"></i> Update Record
                    </button>
                </div>

            </form>

        </div>
    </div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
