

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class admin_signup11
 */
public class admin_signup11 extends HttpServlet {
	Connection cn = null;
	Statement st = null;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out =resp.getWriter();
		   	
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String username = req.getParameter("username");
		   	String email = req.getParameter("email");
		   	String password = req.getParameter("password");
		   	String confirm_password = req.getParameter("Confirm password");
		   	String event = req.getParameter("submit");
		   	
		   	
		   	out.println(username);
		   	out.println(email);
		   	out.println(password);
		   	out.println(confirm_password);
		   	out.println(event);
		   	
		      if(event.equals("SIGNUP"))
		      {
		   	   if(username.equals("") ||  email.equals("") || password.equals("") || confirm_password.equals(""))
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		                 String sql= " insert into Admin_signup (username,email,password,Confirm_password) values ('"+ username +"','"+ email +"', '"+ password +"','"+ confirm_password +"')";
		   	          String insert = db.Insert(sql);
		                 out.println(insert);
		                 
		                 
		                 resp.setContentType("text/html");
		                 out.println(" <script type=\"text/javascript\"> alert('signup success'); location='Home_Page.jsp'; </script>");

		 
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
		   
		   		   }
		   	   }
	}

}
