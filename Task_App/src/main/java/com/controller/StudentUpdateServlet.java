package com.controller;

import java.io.IOException;
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

@WebServlet("/StudentUpdate")
public class StudentUpdateServlet  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Admin admi= (Admin)req.getSession().getAttribute("admin");
		
		if(admi!=null) {
			int id=Integer.parseInt(req.getParameter("id"));
			String Name=req.getParameter("name");
			String Email =req.getParameter("email");
			String Password=req.getParameter("pass");
			long phone = Long.parseLong(req.getParameter("phone"));
			String DOB = req.getParameter("dob");
			String Gen = req.getParameter("gender");
			
			
			//find student object 
			  StudentDao std=new StudentDao();
			  
			  Student si=std.findStudentById(id);
			  
			  si.setName(Name);
			  si.setEmail(Email);
			  si.setPhone(phone);
			  si.setDob(DOB);
			  
			  //update
			  std.SaveStudent(si);
			  
			  // based on id find all student 
			  
			  int AdminId=admi.getId();
			  
			 AdminDao adminn= new AdminDao();
			    Admin adminId= adminn.findById(AdminId);
			    
			   List<Student> listOfStudents= adminId.getStd();
			   req.getSession().setAttribute("list",listOfStudents);
			   
			   //display student dashbord 
			   resp.getWriter().print("<h1>"+Name+" Deatils Updated Success Fully</h1>");;
				req.getRequestDispatcher("StudentList.jsp").include(req, resp);
			 
		}
		
	}

}
