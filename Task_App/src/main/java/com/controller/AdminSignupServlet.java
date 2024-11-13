package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.dto.Admin;
import com.dto.Student;



	@WebServlet("/Adminsign")
	public class AdminSignupServlet extends HttpServlet {
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String password=req.getParameter("pass");
//			long number=Long.parseLong(req.getParameter("num"));
			
			
			//create object of Admin to store the data
		Admin	ad=new Admin();
		ad.setName(name);
		ad.setEmail(email);
		ad.setPassword(password);
		
//		ad.setNumber(number);
		
		//store the data in the data base
		AdminDao add=new AdminDao();
		
		add.SaveAdmin(ad);
		req.getSession().setAttribute("ad", add);
		resp.getWriter().print("<h1>" + "Admin Signup SuccesFull</h1>");
		req.getRequestDispatcher("AdminLogin.jsp").include(req, resp);
		
		}
}
