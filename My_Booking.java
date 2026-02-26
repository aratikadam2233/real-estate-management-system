

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.Statement;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class My_Booking
 */
public class My_Booking extends HttpServlet  {
	Connection cn = null;
	Statement st = null;

	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out =resp.getWriter();
		 	HttpSession session = req.getSession();
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String fullname = req.getParameter("fullname");
		   	String emailaddress = req.getParameter("emailaddress");
		   	String phone = req.getParameter("phone");
		   	String property = req.getParameter("property");
		   	String date = req.getParameter("date");
		   	String message = req.getParameter("message");
		   	String event = req.getParameter("submit");
		   	
		   	out.println(fullname);
		   	out.println(emailaddress);
		   	out.println(phone);
		   	out.println(property);
		   	out.println(date);
		   	out.println(message);
		   	out.println(event);
		   	
		      if(event.equals("Book now"))
		      {
		   	   if(fullname.equals("") ||  emailaddress.equals("") || phone.equals("") || property.equals("") || message.equals("") || date.equals(""))
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		                 String sql= " insert into My_Booking (fullname,emailaddress,phone,property,message,date) values ('"+ fullname +"','"+ emailaddress +"', '"+ phone+"','"+ property +"' ,'"+message+"','"+date+"')";
		   	          String insert = db.Insert(sql);
		                 out.println(insert);
		                 
		                 
		                 resp.setContentType("text/html");
		                 out.println(" <script type=\"text/javascript\"> alert('My_Booking success'); location='My_Booking.jsp'; </script>");

		 
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
		   
		   		   }
		   	   }
	}



		}   
