package edu.cjc.sms.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.servicei.StudentServiceInt;
import edu.cjc.sms.app.serviceimpl.StudentService;

@Controller
public class StudentController 
{
	@Autowired
	private StudentServiceInt ssi;
	
	List<Student> list = new ArrayList<Student>();
	
	@RequestMapping("/")
	public String preLogin()
	{
		return "login";
	}
	
	@RequestMapping("login")
	public String login(@RequestParam("username") String un, @RequestParam("password") String ps, Model m)
	{
		if(un.equalsIgnoreCase("admin") && ps.equalsIgnoreCase("admin"))
		{
			return "adminscreen";
		}
		else
		{
			m.addAttribute("login_fail", "Enter valid login details");
			return "login";
		}
	}

	@RequestMapping("enroll")
	public String enroll()
	{
		return "adminscreen";
	}
	
	@RequestMapping("enroll_student")
	public String saveStudent(@ModelAttribute Student student)
	{
		ssi.saveStudentDetails(student);
		return "adminscreen";
	}
	
	@RequestMapping("view")
	public String showData(@ModelAttribute Student stu, Model m)
	{
		
		return "adminscreen";
	}
	
	
}
