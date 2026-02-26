<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin HomePage</title> 

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/Home_Page.css">
	<style type="text/css"> <%@include file="css/Home_Page.css" %> </style>
	
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
        
        
        <div class="banner-text">
             <h1>Find A Perfect Home To<br>Live With Your Family</h1>
            <p>providing Excellent Guidance And Honest Advice On Real Estate.</p>
        </div>        
    </div>
</body>
</html>