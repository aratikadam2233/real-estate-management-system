

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class ContactUs
 */
public class ContactUs extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  PrintWriter out =resp.getWriter();
	   	
	   	Database db = new Database();
	   	String result = db.Connectdb();
	   	out.println(result);
	   	

	   	String name = req.getParameter("name");
	   	String subject = req.getParameter("subject");
	   	String message = req.getParameter("message");
	   	String email = req.getParameter("email");
	   	String event = req.getParameter("submit");
	   	
	   	
	   	out.println(name);
	   	out.println(subject);
	   	out.println(message);
	   	out.println(email);
	   	out.println(event);
	   	
	      if(event.equals("submit"))
	      {
	   	   if(name.equals("") ||  subject.equals("") || message.equals("") || email.equals(""))
	   	   {
	   		   out.println("some value is Empty");
	   	   }
	   	   else
	   	   {
	   		   try
	   		   {
	                 String sql= " insert into ContactUs (name,subject,message,email) values ('"+ name +"','"+ subject +"', '"+ message+"','"+ email +"')";
	   	          String insert = db.Insert(sql);
	                 out.println(insert);
	                 
	                 
	                 resp.setContentType("text/html");
	                 out.println(" <script type=\"text/javascript\"> alert('ContactUs success'); location='Home_Page.jsp'; </script>");


	 
	   		   }
	   		   catch(Exception ex)
	   		   {
	   			   out.println(ex.toString());
	   		   }
	   
	   		   }
	   	   }
	      
	      }
  }
  
	      
  
  




