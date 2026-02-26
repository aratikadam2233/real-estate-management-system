<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Property</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/Add_Property.css">
	<style type="text/css"> <%@include file="css/Add_Property.css" %> </style>


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


 <form action="Add_Property" method="post">
     
        <div class="container">
    
            <h2>Add Property</h2>
    
    <div class="row">
    <div class="col-sm-6">
    <input type="text" class="textbox" placeholder="property name" name="property_name">
    
       <input type="text" class="textbox" placeholder="location" name="location">
    
       <input type="text" class="textbox" placeholder="price" name="price">
    
       <input type="text" class="textbox" placeholder="description" name="description">
       
       <input type="text" class="textbox" placeholder="agentname" name="agentname">
       
       
       <input type="file" class="textbox" name="image">
       <input type="text" class="textbox" placeholder="Bedroom" name="bedroom">
    </div>
    <div class="col-sm-6">
       <input type="text" class="textbox" placeholder="Bathroom" name="bathroom">
    
       <input type="text" class="textbox" placeholder="Square Footage" name=square_footage>
    
       <input type="text" class="textbox" placeholder="Pool" name="pool">
       
       <input type="text" class="textbox" placeholder="Gym" name="gym">
       
       <input type="text" class="textbox" placeholder="Security Systeam" name="security_system">
    
       <input type="text" class="textbox" placeholder="City" name="city">
    
       <input type="text" class="textbox" placeholder="Zip" name="zip">
    </div>
    </div>
      
       
      <br>
      <br> 
       
       <input type="Submit" class="signup_button" value="submit" name="submit">
       <br><br>
        
    
    
    </div>
       <br>
    </form>

</body>
</html>