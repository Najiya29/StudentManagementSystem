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
	StudentServiceInt ssi;
	
	@RequestMapping("/")
	public String preLogin()
	{
		return "alllogin";
	}
	
	@RequestMapping("/alog")	
	public String adminLog()
	{
		return "login";
	}
	
	@RequestMapping("/login")
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
	
	@RequestMapping("/enrollForm")
	public String openEnrollForm()
	{
		return "register";
	}

	@RequestMapping("/enroll")
	public String saveStudent(@ModelAttribute Student student)
	{
		ssi.saveStudentDetails(student);
		return "register";
	}

	
	@RequestMapping("/view")
	public String viewAllData(@ModelAttribute Student stu, Model m)
	{
			List<Student> list = ssi.getStudentData();
			m.addAttribute("data", list);
			return "viewscreen";
	}
	
	@RequestMapping("/back")
	public String backToAdmin()
	{
		return "adminscreen";
	}
	
	@RequestMapping("/delete")
	public String deleteData(@RequestParam("id") int id, Model m)
	{
		List<Student> list = ssi.deleteStudentById(id);
		m.addAttribute("data", list);
		return "viewscreen";
	}
	
	@RequestMapping("/searchByMode")
	public String getStudentByBatchMode(@RequestParam("batchMode") String batchMode, Model m)
	{
		List<Student> list;
		if(batchMode.isEmpty())
		{
			list = ssi.getStudentData();
		}
		else
		{
			list = ssi.getStudentByBatchMode(batchMode);
		}
		m.addAttribute("data", list);
		return "viewscreen";
	}
	
	@RequestMapping("/edit")
	public String editData(@RequestParam("id") int studentID, Model m)
	{
		Student stu = ssi.getSingleStudent(studentID);
		m.addAttribute("s", stu);
		return "edit";
	}
	
	@RequestMapping("/update")
	public String updateStudentData(@ModelAttribute Student student, Model m)
	{
		List<Student> list = ssi.updateStudent(student);
		m.addAttribute("data", list);
		return "viewscreen";
	}
}