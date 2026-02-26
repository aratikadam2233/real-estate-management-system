

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.Statement;

import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class Sales_Form
 */
public class Sales_Form extends HttpServlet {
	Connection cn = null;
	Statement st = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out =resp.getWriter();
		 	HttpSession session = req.getSession();
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String city = req.getParameter("city");
		   	String minimum_price= req.getParameter("minimum_price");
		   	String BHK= req.getParameter("BHK");
		   	String bedroom= req.getParameter("bedroom");
		   	String event = req.getParameter("submit");
		   	
		   	
		   	out.println(city);
		   	out.println(minimum_price);
		   	out.println(BHK);
		   	out.println(bedroom);
		   	out.println(event);
		   	
		      if(event.equals("submit"))
		      {
		   	   if(city.equals("") ||  minimum_price.equals("") || BHK.equals("") || bedroom.equals(""))
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		                 String sql= " insert into Sales_Form (city,minimum_price,BHK,bedroom) values ('"+ city +"','"+ minimum_price +"', '"+ BHK +"','"+ bedroom +"')";
		   	          String insert = db.Insert(sql);
		                 out.println(insert);
		                 
		                 
		                 resp.setContentType("text/html");
		                 out.println(" <script type=\"text/javascript\"> alert('Sales_Form Succesfully'); location='Home_Page.jsp'; </script>");

		 
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
		   
		   		   }
		   	   }

	}
	

	}
	

