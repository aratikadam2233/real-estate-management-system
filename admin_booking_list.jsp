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
	
	<style type="text/css"> <%@include file="css/table.css" %> </style>
</head>
<body>



<center><h1>Payment List</h1></center>
<div class="box">
<table>
<thead>
<tr>
<th>Id </th>
<th>Name</th>
<th>Card No</th>
<th>Expiry</th>
<th>cvv</th>
<th>Amount</th>
</tr>
</thead>
<tbody>
<%
         Connection cn =null;
      Statement st =null;
      Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RealEstate","root","root");

		String sql ="select * from payment  ";
		st=cn.createStatement();
		ResultSet rs=st.executeQuery(sql);

	
		
		while( rs.next() )
		{
      %>
<tr>
<td><%=rs.getString("p_id") %></td>
<td><%=rs.getString("card_holdername") %></td>
<td><%=rs.getString("card_number") %></td>
<td><%=rs.getString("expiry") %></td>
<td><%=rs.getString("cvv") %></td>
<td><%=rs.getString("amount") %></td>
</tr>
<%} %>
</tbody>
</table>
</div>
</body>
</html>