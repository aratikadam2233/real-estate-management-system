

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.Statement;

import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Payment
 */
public class Payment extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;

      @Override
    	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  
		  PrintWriter out =resp.getWriter();
		   	
		   	Database db = new Database();
		   	String result = db.Connectdb();
		   	out.println(result);
		   	
		   	String card_holdername = req.getParameter("card_holdername");
		   	String card_number = req.getParameter("card_number");
		   	String expiry = req.getParameter("expiry");
		   	String cvv  = req.getParameter("cvv");
		   	String amount = req.getParameter("amount");
		   	String event = req.getParameter("submit");

		   	
		   	out.println(card_holdername);
		   	out.println(card_number);
		   	out.println(expiry);
		   	out.println(cvv);
		   	out.println(amount);
		   	out.println(event);
		   	
		      if(event.equals("PAYNOW"))
		      {
		   	   if(card_holdername.equals("") ||  card_number.equals("") || expiry.equals("") || cvv.equals("") || amount.equals(""))
		   	   {
		   		   out.println("some value is Empty");
		   	   }
		   	   else
		   	   {
		   		   try
		   		   {
		              String sql= " insert into payment (card_holdername,card_number,expiry,cvv,amount) values ('"+card_holdername+"','"+card_number+"','"+expiry+"','"+cvv+"','"+amount+"')";
		   	          String insert = db.Insert(sql);
		                 out.println(insert);
		                 
		                 
		                 resp.setContentType("text/html");
		                 out.println(" <script type=\"text/javascript\"> alert('Payment success'); location='Home_Page.jsp'; </script>");

		 
		   		   }
		   		   catch(Exception ex)
		   		   {
		   			   out.println(ex.toString());
		   		   }
		   
		   		   }
		   	   }
	       }  
    	}    
