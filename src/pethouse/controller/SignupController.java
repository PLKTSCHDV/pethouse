package pethouse.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pethouse.dao.userdetails;
import petehouse.operation.Pethouseoperation;

public class SignupController extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response) {
	  doPost(request,response);
  }
  public void doPost(HttpServletRequest request,HttpServletResponse response) {
	  try {
		  userdetails user=new userdetails();
		  user.setFname(request.getParameter("fname"));
		  user.setLname(request.getParameter("lname"));
		  user.setUser_type("User");
		  user.setPsw(request.getParameter("psw"));
		  user.setAddress(request.getParameter("address"));
		  user.setContact(request.getParameter("contact"));
		  user.setEmail(request.getParameter("email"));
		  int i=Pethouseoperation.signup(user);
		  if(i>0 ) {
			  HttpSession session=request.getSession(false);
			  session.setAttribute("message", "Student Added Successfully");
			  response.sendRedirect("login.jsp");
		  }
		  else {
			  HttpSession session=request.getSession(false);
			  session.setAttribute("message","Student not added" );
			  response.sendRedirect("signup.jsp");
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
  }
}
