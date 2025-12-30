<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<h1>Update Student Form</h1>
    <table class="table table-bordered">
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
    	<th>Student Mode</th>
    	<td>${stu.batchMode}</td>
    </tr>
    <tr>
    	<th>Fees Paid</th>
    	<td>₹ ${stu.feesPaid}</td>
    </tr>
</table>

<form action="update">
    <input type="text" name="studentID" value="${stu.studentID}" hidden="true">

    <label for="amount">Enter Installment Amount</label>
    <input type="number" name="amount" required>

    <input type="submit" value="Update Fees">
</form>

</body>
</html>