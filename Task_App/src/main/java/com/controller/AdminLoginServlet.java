package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dto.Admin;
@WebServlet("/Adminlogin")
public class AdminLoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	  String email=	req.getParameter("email");
	  String password =req.getParameter("pass");
	  
	 AdminDao add= new AdminDao();
	               Admin admin= add.FindEmail(email);
	               req.getSession().setAttribute("admin", admin);
	               if(admin!=null) {
	            	  if(admin.getPassword().equals(password)) {
	            		  resp.getWriter().print("<h1>" + "Admin Login Successfull</h1>");
	            			req.getRequestDispatcher("StudentDashbord.jsp").include(req, resp);
	            	  }
	            	  else {
	            		  
	          				resp.getWriter().print("<h1>Incorrect Password </h1>");
	          				req.getRequestDispatcher("AdminLogin.jsp").include(req, resp);
	          			
	            	  }
	               }
	}
}
