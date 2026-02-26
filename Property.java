

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Property
 */
public class Property extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
     
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  
		PrintWriter out =resp.getWriter();
	   	HttpSession session = req.getSession();
		
	   	Database db = new Database();
	   	String result = db.Connectdb();
	   	out.println(result);
	   	
	   	String p_id = req.getParameter("p_id"); 
	   	String event = req.getParameter("submit");
	   	
	   	out.println(p_id); 

	   	out.println(event);
	   	
	      if(event.equals("view detail"))
	      {
	   	   if(p_id.equals("")  )
	   	   {
	   		   out.println("some value is Empty");
	   	   }
	   	   else
	   	   {
	   		   try
	   		   { 
	   			   session.setAttribute("p_id", p_id);
	   			   resp.sendRedirect("Details.jsp");
	   		   }
	   		   catch(Exception ex)
	   		   {
	   			   out.println(ex.toString());
	   		   }
   		   }
   	   }
	}
}
