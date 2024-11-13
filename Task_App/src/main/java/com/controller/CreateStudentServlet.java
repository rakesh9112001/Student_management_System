package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dao.StudentDao;
import com.dto.Admin;
import com.dto.Student;
@WebServlet("/createStudent")
public class CreateStudentServlet extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//name=Rakesh&email=rakesh%40gmail.com&pass=12345&phone=07063363919&dob=1999-03-25&gender=male
		Admin admi=(Admin)req.getSession().getAttribute("admin");
//		resp.getWriter().print("<h1>"+admi.getName()+"</h1");
//		req.getRequestDispatcher("StudentList.jsp").include(req, resp);
		if(admi!=null)
		{	
			
			
			String Name=req.getParameter("name");
			String Email =req.getParameter("email");
			String Password=req.getParameter("pass");
			long phone = Long.parseLong(req.getParameter("phone"));
			String DOB = req.getParameter("dob");
			String Gen = req.getParameter("gender");
			
			//fetch the admin object from session
//			Admin admin = (Admin)req.getSession().getAttribute("admin");
//			create admin object 
			

//		create student object
			Student s=new Student();		
			s.setName(Name);
			s.setEmail(Email);
			s.setPassword(Password);
			s.setPhone(phone);
			s.setDob(DOB);
			s.setGender(Gen);
			s.setAdmins(admi);
//			list of student 
//			List<Student> st=new ArrayList<Student>();
//			st.add(s);
//			Mapping  
			AdminDao admindao= new AdminDao();
			StudentDao sd=new StudentDao();
			sd.SaveStudent(s);
			int AId = admi.getId();
			Admin adm = admindao.findById(AId);
			List<Student> listofStudent = adm.getStd();
			req.getSession().setAttribute("listofStudent", listofStudent);
			
			resp.getWriter().print("<h1>" + "Student Signup SuccesFull</h1>");
			req.getRequestDispatcher("EmpList.jsp").include(req, resp);
		}
		else {
			resp.getWriter().print("<h1>" + "Do ADMIN loginFirst</h1>");
			req.getRequestDispatcher("AdminLogin.jsp").include(req, resp);
		}
		
		
	}
}
