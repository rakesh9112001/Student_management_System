package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dto.Admin;
import com.dto.Student;

@WebServlet("/findallStudent")
public class FindAllStudentServlet  extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Admin admi = (Admin) req.getSession().getAttribute("admin");// admin
		if(admi!=null) {
			int adminId=admi.getId();
			
			AdminDao adao=new AdminDao();
			Admin Adminn=adao.findById(adminId);
		List<Student>	listofStudents=Adminn.getStd();
		//store in session object
		req.getSession().setAttribute("list", listofStudents);
		//display Studentdashboard
		req.getRequestDispatcher("StudentList.jsp").include(req, resp);
		}
	}
}
