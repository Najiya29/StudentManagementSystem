<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<h1>Update Student Form</h1>
	<form action="">
		<label for="si">Student Id</label>
    	<input type="number" id="si" name="studentID" placeholder="Enter Student ID" value="${s.studentID}" required><br><br>
		<label for="fn">Full Name</label>
    	<input type="text" id="fn"name="studentFullName" placeholder="Enter full name" value="${s.studentFullName}" required><br><br>
    	<label for="se">Email</label>
        <input type="email" id="se" name="studentEmail" placeholder="Enter email" value="${s.studentEmail}" required><br><br>
        <label for="age">Age</label>
        <input type="number" id="age" name="studentAge" placeholder="Age" value="${s.studentAge}" required><br><br>
        <label for="fp">Fees Paid</label>
        <input type="number" id="fp" name="feesPaid" placeholder="Fees" value="${s.feesPaid}" required><br><br>
        <label for="bm">Batch Mode</label>
        <select name="batchMode" id="bm" value="${s.batchMode}"required>
        <!--<option disabled selected>Select</option>-->
        	<option>Online</option>
        	<option>Offline</option>
        </select><br><br>
        <label for="cn">College Name</label>
        <input type="text" id="cn" name="studentCollageName" placeholder="Collage Name" value="${s.studentCollageName}" required><br><br>
        <label for="bn">Batch Number</label>
        <select for="bn" name="batchNo" value="${s.batchNo}" required>
        <!--<option disabled selected>Select</option>-->
            <option>FDJ-196</option>
            <option>REG-196</option>
            <option>FDJ-198</option>
            <option>REG-198</option>
            <option>FDJ-195</option>
            <option>REG-195</option>
        </select><br><br>
        <label for="sc">Course</label>
        <input id="sc" type="radio" name="studentCourse" value="${s.studentCourse}" checked>
        <label >Java</label>
        <input id="sc" type="radio" name="studentCourse" value="Python">
        <label >Python</label>
        <input id="sc" type="radio" name="studentCourse" value="Testing">
        <label >Testing</label><br><br>
        <input type="submit" value="Update">         			
	</form>
</body>
</html>