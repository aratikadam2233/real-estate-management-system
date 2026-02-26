

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
 * Servlet implementation class Details
 */
public class Details extends HttpServlet {
	
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
	   	String property_name = req.getParameter("property_name");
	   	String location = req.getParameter("location");
	   	String price = req.getParameter("price");
	   	String description = req.getParameter("description");
	   	String image = req.getParameter("image");
	   	String agentname= req.getParameter("agentname");
	   	String bedroom = req.getParameter("bedroom");
	   	String bathroom = req.getParameter("bathroom");
	   	String square_footage = req.getParameter("square_footage");
	   	String gym = req.getParameter("gym");
	   	String security_system = req.getParameter("security_system");
	   	String city = req.getParameter("city");
	   	String zip= req.getParameter("zip");
	   	String event = req.getParameter("submit");
	   	
	   	
	   	out.println(p_id);
	   	out.println(property_name);
	   	out.println(location);
	   	out.println(price);
	   	out.println(description);
	   	out.println(image);
	   	out.println(agentname);
	   	out.println(bedroom);
	   	out.println(bathroom);
	   	out.println(square_footage);
	   	out.println(gym);
	   	out.println(security_system);
	   	out.println(city);
	   	out.println(zip);

	   	out.println(event);
	   	
	      if(event.equals("Book now"))
	      {
	   	   if(p_id.equals("") || property_name .equals("") || location.equals("") || price.equals("") || description.equals("") || image.equals("") || agentname.equals("") || bedroom.equals("") || bathroom.equals("") || square_footage.equals("") || gym.equals("") || security_system.equals("") || city.equals("") || zip.equals(""))
	   	   {
	   		   out.println("some value is Empty");
	   	   }
	   	   else
	   	   {
		   		   try
		   		   {
		   			   	session.setAttribute("p_id", p_id);
			   			session.setAttribute("property_name", property_name);
			   			session.setAttribute("location", location);
			   			session.setAttribute("price", price);
			   			session.setAttribute("description", description);
			   			session.setAttribute("image", image);
			   			session.setAttribute("agentname", agentname);
			   			session.setAttribute("bedroom", bedroom);
			   			session.setAttribute("bathroom", bathroom);
			   			session.setAttribute("square_footage", square_footage);
			   			session.setAttribute("gym", gym);
			   			session.setAttribute("security_system", security_system);
			   			session.setAttribute("city", city);
			   			session.setAttribute("zip", zip);
			   			
			   			resp.sendRedirect("Payment.jsp");
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
	   
	   		}
	   	}
	}
}
