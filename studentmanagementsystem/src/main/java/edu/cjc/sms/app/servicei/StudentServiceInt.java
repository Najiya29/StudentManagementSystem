package edu.cjc.sms.app.servicei;

import java.util.List;

import edu.cjc.sms.app.model.Student;

public interface StudentServiceInt 
{

	public void saveStudentDetails(Student student);

	public List<Student> getStudentData();

	public List<Student> deleteStudentById(int id);

	public List<Student> getStudentByBatchMode(String batchMode, String batchNo);

	public Student getSingleStudent(int studentID);

	public void payFees(int studentID, double amount);

	public void updateBatchMode(int studentID, String batchMode);
	
	public List<Student> updateStudent(Student student);

}
