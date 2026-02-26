

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Search_Page
 */
public class Search_Page extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;

	@Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  	PrintWriter out =resp.getWriter();
		 	HttpSession session = req.getSession();
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String propertyname = req.getParameter("propertyname");
		   	String Location = req.getParameter("Location");
		   	String PriceRange = req.getParameter("PriceRange");
		   	String Bedrooms = req.getParameter("Bedrooms");

		   	String event = req.getParameter("submit");
		   	
		   	
		   	out.println(propertyname);
		   	out.println(Location);
		   	out.println(PriceRange);
		   	out.println(Bedrooms);

		   	out.println(event);
		   	
		     if(event.equals("search"))
		     {  
		   	   
			    if(propertyname.equals("")  || Location.equals("") || PriceRange.equals("") || Bedrooms.equals(""))
			    {
			    	
			    	out.println("Some value is Empty");
			    	resp.setContentType("text/html");
			    	out.println(" <script type=\"text/javascript\"> alert('Some Value is Empty'); location='User_Login.jsp'; </script> ");
			    	
			    }
			    else
			    {	
			    	try
			    	{
			    		session.setAttribute("propertyname", propertyname);
			    		session.setAttribute("Location", Location);
			    		session.setAttribute("PriceRange", PriceRange);
			    		session.setAttribute("Bedrooms", Bedrooms); 
			    		resp.sendRedirect("All_Property.jsp");
			    	}
			    	catch(Exception ex)
			    	{
		    	
		    	     out.println(ex.toString());
			    	}	

			    }
		     }
		      
	}



		
		
		
		
		}     

