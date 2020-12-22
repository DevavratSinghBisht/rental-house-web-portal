<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Filter</title>
<style>
    body{
    background-image: url("Background.png");
    }
    </style>
    
</head>
<body>

<div align="center">
<h2>Search by: </h2><br/>
<form method="post" action="filter.jsp">
	
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
	
	<tr>
	<td><input type="submit" value="Apply Filter"/><br/></td>
	</tr>

</table>
	
</form>

</div>
</body>
</html>
