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

public class CheckoutController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		userdetails user=(userdetails)session.getAttribute("user");
		try
		{
			String name=user.getFname();
			
			if(name!=null) {
				//request.getRequestDispatcher("dashboard.html").include(request, response);
				 response.sendRedirect("checkout.jsp");
			 }
		
			 else {
				 response.sendRedirect("login.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("login.jsp");
		}
	
	}

}
