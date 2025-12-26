<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
.enroll {
    background-image: url("images/addstudentbg.jpeg");
    background-size: cover;
    background-repeat: no-repeat;
}
.view {
    background-image: url("images/viewstudents.jpeg");
    background-size: cover;
    background-repeat: no-repeat;
}
.heading {
    font-family: cursive;
    text-align: center;
}
</style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand d-flex align-items-center" href="#">
      <img src="pictures/logo.webp" height="40" class="me-2 rounded">
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#adminNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="adminNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="#enroll">Enroll</a></li>
        <li class="nav-item"><a class="nav-link" href="view">View</a></li>
        <li class="nav-item"><a class="nav-link text-warning" href="/">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- ✅ Enrollment Section -->
<section id="enroll" class="enroll py-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8 col-lg-6">

        <div class="card shadow-lg rounded-4">
          <div class="card-body p-4">

            <h3 class="heading mb-4">Student Enrollment Form</h3>

            <form action="enroll_student">

              <div class="row g-3">
                <div class="col-md-6">
                  <label class="form-label">Full Name</label>
                  <input type="text" class="form-control" name="studentFullName">
                </div>

                <div class="col-md-6">
                  <label class="form-label">Email</label>
                  <input type="email" class="form-control" name="studentEmail">
                </div>

                <div class="col-md-6">
                  <label class="form-label">Age</label>
                  <input type="number" class="form-control" name="studentAge">
                </div>

                <div class="col-md-6">
                  <label class="form-label">Collage Name</label>
                  <input type="text" class="form-control" name="studentCollageName">
                </div>

                <div class="col-md-6">
                  <label class="form-label">Fees Paid</label>
                  <input type="number" class="form-control" name="feesPaid">
                </div>

                <div class="col-md-6">
                  <label class="form-label d-block">Course</label>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="studentCourse" value="Java" checked>
                    <label class="form-check-label">Java</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="studentCourse" value="Python">
                    <label class="form-check-label">Python</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="studentCourse" value="Testing">
                    <label class="form-check-label">Testing</label>
                  </div>
                </div>

                <div class="col-md-6">
                  <label class="form-label">Batch Mode</label>
                  <select class="form-select" name="batchMode">
                    <option selected disabled>Select</option>
                    <option>Online</option>
                    <option>Offline</option>
                  </select>
                </div>

                <div class="col-md-6">
                  <label class="form-label">Batch Number</label>
                  <select class="form-select" name="batchNo">
                    <option selected disabled>Select</option>
                    <option>FDJ-196</option>
                    <option>REG-196</option>
                    <option>FDJ-198</option>
                    <option>REG-198</option>
                    <option>FDJ-195</option>
                    <option>REG-195</option>
                  </select>
                </div>
              </div>

              <div class="text-center mt-4">
                <button class="btn btn-primary px-5">Submit</button>
              </div>

            </form>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
