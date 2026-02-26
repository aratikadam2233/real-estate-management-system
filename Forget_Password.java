

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Forget_Password
 */
public class Forget_Password extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  PrintWriter out =resp.getWriter();
		   	
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String email= req.getParameter("email");
		   	String password = req.getParameter("password");
		   	String event = req.getParameter("submit");

		   	
		   	out.println(email);
		   	out.println(password);
		   	out.println(event);

		   	
		      if(event.equals("submit"))
		      {
		   	   if(email.equals("") ||  password.equals(""))
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		                 String sql= " insert into Forget_Password (email,password,) values ('"+email+"','"+ password+"' )";
		   	          String insert = db.Insert(sql);
		                 out.println(insert);

		                 
		                 
		                 resp.setContentType("text/html");
		                 out.println(" <script type=\"text/javascript\"> alert('Forget_Password Succesfully'); location='Home_Page.jsp'; </script>");

		 
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
		   
		   		   }
		   	   }


		}
	}
