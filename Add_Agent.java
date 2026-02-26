

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.Statement;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Add_Agent
 */
public class Add_Agent extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out =resp.getWriter();
		   	
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String agentname = req.getParameter("agentname");
		   	String email = req.getParameter("email");
		   	String contact = req.getParameter("contact");
		   	String event = req.getParameter("submit");
		   	
		   	
		   	out.println(agentname);
		   	out.println(email);
		   	out.println(agentname);
		   	out.println(event);
		   	
		      if(event.equals("submit"))
		      {
		   	   if(agentname.equals("") ||  email.equals("") || contact.equals(""))
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		                 String sql= " insert into Add_Agent (agentname,email,contact) values ('"+agentname+"','"+email+"','"+contact+"')";
		   	          String insert = db.Insert(sql);
		                 out.println(insert);
		                 
		                 
		                 resp.setContentType("text/html");
		                 out.println(" <script type=\"text/javascript\"> alert('Add_Agent success'); location='Add_Agent.jsp'; </script>");

		 
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
		   
		   		   }
		   	   }
	}



	}

