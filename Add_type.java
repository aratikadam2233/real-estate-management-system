

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.Statement;


import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class Add_type
 */
public class Add_type extends HttpServlet {
	Connection cn = null;
	Statement st = null;

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  PrintWriter out =resp.getWriter();
	   	
	   	Database db = new Database();
	   	String result = db.Connectdb();
	   	out.println(result);
	   	
	   	String image = req.getParameter("image");
	   	String Type_Name= req.getParameter("Type_Name");
	   	String Description = req.getParameter("Description");
	   	String event = req.getParameter("submit");

	   	
	   	out.println(Type_Name);
	   	out.println(Description);
	   	out.println(event);

	   	
	      if(event.equals("submit"))
	      {
	   	   if(Type_Name.equals("") ||  Description.equals("") || image.equals(""))
	   	   {
	   		   out.println("some value is Empty");
	   	   }
	   	   else
	   	   {
	   		   try
	   		   {
	                String sql= " insert into Add_type (Type_Name,Description,image) values ('"+Type_Name +"','"+ Description+"', '"+image+"' )";
	   	          	String insert = db.Insert(sql);
	                out.println(insert);
 
	                 resp.setContentType("text/html");
	                 out.println(" <script type=\"text/javascript\"> alert('Add type Succesfully'); location='Property_Type.jsp'; </script>");

	 
	   		   }
	   		   catch(Exception ex)
	   		   {
	   			   out.println(ex.toString());
	   		   }
	   
	   		   }
	   	   }


	}
}
