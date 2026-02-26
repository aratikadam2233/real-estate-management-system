

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class admin_property_list
 */
public class admin_property_list extends HttpServlet {
	
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
   	
      if(event.equals("Delete"))
      {
    	  String delete = db.delete("delete from add_property where p_id='"+p_id+"'");
    	  out.println(delete);
    	  resp.sendRedirect("admin_property_list.jsp");
      }
      }

}
