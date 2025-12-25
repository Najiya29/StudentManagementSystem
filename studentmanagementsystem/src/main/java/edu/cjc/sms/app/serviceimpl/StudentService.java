package edu.cjc.sms.app.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.repository.StudentRepo;
import edu.cjc.sms.app.servicei.StudentServiceInt;

@Service
public class StudentService implements StudentServiceInt{

	@Autowired
	private StudentRepo sr;

	@Override
	public void saveStudentDetails(Student stu) 
	{
		sr.save(stu);
	}

}
