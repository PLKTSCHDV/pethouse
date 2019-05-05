package petehouse.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pethouse.dao.userdetails;
import pethouse.dao.Pet;

import pethouse.db.DbConnection;

public class Pethouseoperation {
	static PreparedStatement stmt=null;
	static PreparedStatement stmt2=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public static userdetails login(userdetails user) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from user where Email=? and Password=?");
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPsw());
			rs=stmt.executeQuery();
			if(rs.next()) {
				//System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
				user.setFname(rs.getString("fname"));
				user.setLname(rs.getString("lname"));
				user.setUid(rs.getInt("uid"));
				user.setUser_type(rs.getString("user_type"));
				user.setContact(rs.getString("contact"));
				user.setAddress(rs.getString("address"));
			}  
			else {
				System.out.println("in null");
				return null;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public ResultSet showanimal(String c) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from animal where category=?");
			stmt.setString(1, c);
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet total(int id) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from animal where uid=?");
			stmt.setInt(1, id);
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet showpet(int c) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from animal where no=?");
			stmt.setInt(1, c);
			System.out.println("animalno "+c);
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet showcart(int a_id,int u_id) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("update animal set uid=? where no=?");
			stmt.setInt(1, u_id);
			stmt.setInt(2, a_id);
			stmt.executeUpdate();
			System.out.println(a_id+" "+u_id);
			stmt2=con.prepareStatement("select * from animal where uid=?");
			stmt2.setInt(1, u_id);
			//System.out.println("animalno "+c);
			rs=stmt2.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public String showname() {
	String name="";
	 HttpServletRequest request = null;
	HttpSession session=request.getSession(false);
	  userdetails user=(userdetails)session.getAttribute("user");
	 System.out.print(user.getFname());
	name=user.getFname();	
	 return name;
	}
	
	public static int signup(userdetails user) {
		int i=0;
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("insert into user(Fname,Lname,Password,Contact,address,user_type,Email) values(?,?,?,?,?,?,?"
					+ ")");
			stmt.setString(1, user.getFname());
			stmt.setString(2, user.getLname());
			
			stmt.setString(3, user.getPsw());
			stmt.setString(4, user.getContact());
			stmt.setString(5, user.getAddress());
			stmt.setString(6, user.getUser_type());
			stmt.setString(7, user.getEmail());
			
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}

}