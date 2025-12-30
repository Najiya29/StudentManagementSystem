package edu.cjc.sms.app.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.repository.StudentRepo;
import edu.cjc.sms.app.servicei.StudentServiceInt;

@Service
public class StudentService implements StudentServiceInt{

	@Autowired
	StudentRepo sr;

	@Override
	public void saveStudentDetails(Student stu) 
	{
		sr.save(stu);
	}

	@Override
	public List<Student> getStudentData() 
	{
		List<Student> list = sr.findAll();
		return list;
	}

	@Override
	public List<Student> deleteStudentById(int id) 
	{
		sr.deleteById(id);
		List<Student> list = sr.findAll();
		return list;
	}

	@Override
	public List<Student> getStudentByBatchMode(String batchMode, String batchNo) 
	{
		return sr.findAllByBatchModeAndBatchNoIgnoreCase(batchMode, batchNo);
	}	
	
	@Override
	public Student getSingleStudent(int studentID) 
	{
//		Optional<Student> op = sr.findById(studentID);
//		if(op.isPresent())
//		{
//			Student student = op.get();
//			return student;
//		}
		return sr.findById(studentID).get();
	}

	@Override
	public void payFees(int studentID, double amount) 
	{
		Optional<Student> op = sr.findById(studentID);
		if(op.isPresent())
		{
			Student student = op.get();
			student.setFeesPaid(student.getFeesPaid()+amount);
			sr.save(student);
		}
		else
		{
			throw new ArithmeticException("No Student ID Found");
		}
	}

	
}
