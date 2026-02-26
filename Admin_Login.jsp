<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="ISO-8859-1">
	<title>Admin_login</title>	
	
	<script type="text/javascript" src="js/validation.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/Admin_Login.css">
	<style type="text/css"> <%@include file="css/Admin_Login.css" %> </style>
	

</head>
<body>

<div class="header">
               <nav>
       
            <div class="logo">Real Estate</div>
            <div class="menu">
                <ul>
                    <li><a href="Home_Page.jsp">Home</a></li>
                    <li><a href="Aboutus.jsp">About</a></li>
                    <li><a href="Services.jsp">Services</a></li>
                    <li><a href="ContactUs.jsp">contact</a></li>
                    <li><a href="Blog.jsp">Blog</a></li>
                    
                    
                  </ul> 
            </div>
             </nav>
             </div>

    <form name="Admin_Login8" action="Admin_Login8" method="post">
    <div class="container"> 
    
    <h2> Admin Login</h2>
    
    <input type="text" class="textbox" placeholder="username" name="username" onkeypress="return isString(event)">
    
    <input type="password" class="textbox" placeholder="password" name="password">
   
    <input type="submit" name="submit" class="login_button" value="LOGIN" name="submit">
    
    <br><br>
    
    <a href="Forget_Password.jsp" class="link-class">forget password</a>
    <br><br>
    <a href="Admin_signup.jsp" class="link-class">Don't have an account?Sign_up Here</a>
    
    
    </div>
    </form>
    </body>
</html>
