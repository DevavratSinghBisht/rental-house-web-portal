<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body{
    background-image: url("Background.png");
    }
    </style>
    
</head>
<body>

<div align="center">
<h1>Add house</h1>
    
   	<form method="post" action="AddServlet">
	
	<table>
	<tr>
	<td>Location: </td>
	<td><input type="text" name="location"/></td>
	</tr>
	
	<tr>	
	<td>Deposit: </td>
	<td><input type="text" name="deposit"/><br/></td>
	</tr>
	
	<tr>	
	<td>Rent: </td>
	<td><input type="text" name="rent"/><br/></td>
	</tr>
	
	<tr>	
	<td>Duration: </td>
	<td><input type="text" name="duration"/><br/></td>
	</tr>
	
	<tr>	
	<td>Surface area: </td>
	<td><input type="text" name="s_area"/><br/></td>
	</tr>
	
	<tr>	
	<td>Details: </td>
	<td><input type="text" name="details"/><br/></td>
	</tr>
	
	<tr>	
	<td>Owner's Name: </td>
	<td><input type="text" name="owner"/><br/></td>
	</tr>
	
	<tr>	
	<td>Contact No: </td>
	<td><input type="text" name="contact_no"/><br/></td>
	</tr>
	
	<tr>	
	<td>Email Id: </td>
	<td><input type="text" name="email_id"/><br/></td>
	</tr>
 	  
 	<tr>
	<td><input type="submit" value="Add House"/><br/></td>
 	  
	</form>
</div>
</body>
</html>