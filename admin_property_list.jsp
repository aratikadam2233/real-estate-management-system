<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	
	<style type="text/css"> <%@include file="css/admin_property_list.css" %> </style>
</head>
<body>

     <div class="header">
        <nav>
            <div class="logo">Real Estate</div>
            <div class="menu">
                <ul>
                   <li><a href="Admin_HomePage.jsp">Home</a></li>
                    <li><a href="Add_type.jsp">Add Type</a></li>
                    <li><a href="Add_Property.jsp">Add Property</a></li>
                    <li><a href="Add_Agent.jsp">Add Agent</a></li>
                
                      <li><a href="admin_property_list.jsp"> Property List</a></li>
                          <li><a href="admin_booking_list.jsp">Booking List</a></li>
                    <li><a href="Admin_Reports.jsp">Reports</a></li>
                    
                    
                </ul>  
            </div>
            <div class="socials">
                <a href="Admin_Login.jsp">Logout</a> 
            </div>
        </nav>
</div>
   <h2>View List</h2>
  <%
         Connection cn =null;
      Statement st =null;
      Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RealEstate","root","root");

		String sql ="select * from add_property  ";
		st=cn.createStatement();
		ResultSet rs=st.executeQuery(sql);

	
		
		while( rs.next() )
		{
      %>
         <form action="admin_property_list" method="post">
         <input type="hidden" name="p_id" value="<%=rs.getString("p_id") %>">
          <div class="view-details-section">
           
             <div class="details-container">
              <div class="details-card">
              <img src="images/<%=rs.getString("image") %>" class="img"> 
              </div>
          <div class="details-card">
          <h3>Property Overview</h3>
          <p><%=rs.getString("description") %>.</p>
          <ul>
         
           <li><strong>price : </strong>$<%=rs.getString("price") %></li>
           <li><strong>bedrooms : </strong><%=rs.getString("bedroom") %></li>
           <li><strong>bathroom : </strong><%=rs.getString("bathroom") %></li>
           <li><strong>square footage : </strong><%=rs.getString("square_footage") %></li>
          </ul>
          </div>
          <div class="details-card">
          <h3>Feature</h3>
          <ul>
           <li>pool : <%=rs.getString("pool") %></li>
           <li>gym : <%=rs.getString("gym") %></li>
           <li>security system : <%=rs.getString("security_system") %></li>
          </ul>
          </div>
          <div class="details-card">
          <h3>Location</h3>
          <p><%=rs.getString("location") %>.</p>
          <ul>
          
          <li><strong>city : </strong><%=rs.getString("city") %></li>
          <li><strong>zip : </strong><%=rs.getString("zip") %></li>
          
          <button type="submit" name="submit" value="Delete">Delete</button>
          
          
          
          
          </ul>
          </div>
          </div>
          
          </div>
          <br>
          </form>

<%} %>

</body>
</html>