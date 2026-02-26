

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class Add_Property
 */
public class Add_Property extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;

	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  PrintWriter out =resp.getWriter();
	   	
	   	Database db = new Database();
	   	String result = db.Connectdb();
	   	out.println(result);
	   	
	   	String property_name = req.getParameter("property_name");
	   	String location = req.getParameter("location");
	   	String price = req.getParameter("price");
	   	String description = req.getParameter("description");
	   	String agentname = req.getParameter("agentname");
	   	String image = req.getParameter("image");
	   	String bedroom = req.getParameter("bedroom");
	   	String bathroom = req.getParameter("bathroom");
	   	String square_footage = req.getParameter("square_footage");
	   	String pool = req.getParameter("pool");
	   	String gym = req.getParameter("gym");
	   	String security_system = req.getParameter("security_system");
	 	String city = req.getParameter("city");
	   	String zip = req.getParameter("zip");
	   	String event = req.getParameter("submit");
	   	
	   	
	   	out.println(property_name);
	   	out.println(location);
	   	out.println(price);
	   	out.println(description);
	   	out.println(agentname);

	   	out.println(event);
	   	
	      if(event.equals("submit"))
	      {
	   	   if(property_name.equals("") ||  location.equals("") || price.equals("") || description.equals("") || agentname.equals(""))
	   	   {
	   		   out.println("some value is Empty");
	   	   }
	   	   else
	   	   {
	   		   try
	   		   {
	                 String sql= " insert into Add_Property (property_name,location,price,description,image,agentname, bedroom, bathroom, square_footage, pool, gym, security_system, city, zip) values ('"+ property_name +"','"+ location +"', '"+ price +"','"+ description +"','"+image+"','"+agentname+"','"+bedroom+"','"+bathroom+"','"+square_footage+"','"+pool+"','"+gym+"','"+security_system+"','"+city+"','"+zip+"')";
	   	          String insert = db.Insert(sql);
	                 out.println(insert);
	                 
	                 
	                 resp.setContentType("text/html");
	                 out.println(" <script type=\"text/javascript\"> alert('Add Property Succesfully'); location='admin_property_list.jsp'; </script>");

	 
	   		   }
	   		   catch(Exception ex)
	   		   {
	   			   out.println(ex.toString());
	   		   }
	   
	   		   }
	   	   }

}
}
