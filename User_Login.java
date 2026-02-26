

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class User_Login
 */
public class User_Login extends HttpServlet {
       
	Connection cn = null;
	Statement st = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		  PrintWriter out =resp.getWriter();
		   	HttpSession session = req.getSession();
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String username = req.getParameter("username");
		   	String password = req.getParameter("password");
		   	String event = req.getParameter("submit");
		   	
		   	
		   	out.println(username);
		   	out.println(password);
		   	out.println(event);
		   	
		     if(event.equals("LOGIN"))
		     {  
		   	   
			    if(username.equals("")  || password.equals("") )
			    {
			    	
			    	out.println("Some value is Empty");
			    	resp.setContentType("text/html");
			    	out.println(" <script type=\"text/javascript\"> alert('Some Value is Empty'); location='User_Login.jsp'; </script> ");
			    	
			    }
			    else
			    {	
			    	try
			    	{
		    		Class.forName("com.mysql.jdbc.Driver");
		    		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RealEstate","root","root");

		    		String sql ="select * from User_signup Where username='"+username+"' && password='"+password+"' ";
		    		st=cn.createStatement();
		    		ResultSet rs=st.executeQuery(sql);

		    	
		    		
		    		if( rs.next() )
		    		{
		    			 resp.setContentType("text/html");
		    			 out.println(" <script type=\"text/javascript\"> alert('Login success'); location='User_HomePage.jsp'; </script>");
		    			 
		    			 session.setAttribute("user_id", rs.getString("user_id"))	;	
		    		}
		    		else
		    		{
		    			 resp.setContentType("text/html");
		    			 out.println(" <script type=\"text/javascript\"> alert('Login failed'); location='User_Login.jsp'; </script>");

		    		}
		    		
		    	
		    	}
		    	
		    catch(Exception ex)
		    	{
		    	
		    	     out.println(ex.toString());
		    	}

		    }
		      }
		      
	}
}

