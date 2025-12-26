<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-4">
  <h2 class="text-center mb-4">ALL STUDENTS DATA</h2>

  <div class="table-responsive">
    <table class="table table-bordered table-hover table-striped">
      <thead class="table-primary">
        <tr>
          <th>Student ID</th>
				<th>Student Full Name</th>
				<th>Student Email</th>
				<th>Student Age</th>
				<th>Student Collage Name</th>
				<th>Student Course</th>
				<th>Student Batch Number</th>
				<th>Student Mode</th>
				<th>Student Fees Paid</th>
				<th>Delete</th>
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
            <td>${stu.feesPaid}</td>
            <td><a href="delete?id=${stu.studentID}">Delete</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <div class="text-center mt-3">
    <a href="log" class="btn btn-secondary">Back to Admin</a>
  </div>
</div>

</body>
</html>
