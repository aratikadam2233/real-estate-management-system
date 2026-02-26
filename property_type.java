

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class property_type
 */
public class property_type extends HttpServlet {
	Connection cn = null;
	Statement st = null;

	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  	PrintWriter out =resp.getWriter();
		  	HttpSession session = req.getSession();
		   	
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	 
		   	String Type_Name = req.getParameter("Type_Name"); 
		   	String event = req.getParameter("submit");
		   	
		   	
		   	out.println(Type_Name); 
		   	out.println(event);
		   	
		      if(event.equals("View"))
		      {
		   	   if(Type_Name.equals("") )
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		                session.setAttribute("Type_Name", Type_Name);
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
	
	
