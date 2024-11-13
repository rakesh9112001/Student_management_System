package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.dto.Admin;
import com.dto.Student;


@WebServlet("/deleteBranch")
public class StudentDeleteServlet extends HttpServlet {
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 
	 Admin admi = (Admin) req.getSession().getAttribute("admin");// admin
	 
	 if(admi!=null) {
		 int StudentId=Integer.parseInt(req.getParameter("id"));
		 // find student id
		 StudentDao sdao=new StudentDao();
		Student sid= sdao.findStudentById(StudentId);
		
		sdao.deleteStudent(sid);
		resp.getWriter().print("<h1>"+StudentId+" Deleted Successfully</h1>");
		req.getRequestDispatcher("StudentList.jsp").include(req, resp);
		 
	 }
}
}
