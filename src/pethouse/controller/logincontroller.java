package pethouse.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pethouse.dao.Pet;
import pethouse.dao.userdetails;
import pethouse.dao.purchasedetails;
import petehouse.operation.Pethouseoperation;

public class logincontroller extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 userdetails user=new userdetails();
		 user.setEmail(request.getParameter("email"));
		 System.out.println(request.getParameter("email"));
		 user.setPsw(request.getParameter("psw"));
		 System.out.println(request.getParameter("psw"));
		 user=Pethouseoperation.login(user);
		 PrintWriter out=response.getWriter();
		 if(user!=null&&user.getUser_type().equalsIgnoreCase("admin")) {
			//request.getRequestDispatcher("dashboard.html").include(request, response);
			 HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
			 response.sendRedirect("admin.jsp");
		 }
		 else if(user!=null&&user.getUser_type().equalsIgnoreCase("user")) {
			 HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
			 response.sendRedirect("dashboard.jsp?id="+session.getId());
		 }
		 
		 
		 else {
			 response.sendRedirect("login.jsp");
		}
	}

}
