<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <html>
    <head>
    <style>
    body{
    background-image: url("Background.png");
    }
    </style>
    </head>
    <body>
    
<div align="center">

    <h3>New User Details</h3>
    
     
    
   	<form method="post" action="Servlet">
	
	<table>
	<tr>
	<td>Name: </td>
	<td><input type="text" name="name"/></td>
	</tr>
	
	<tr>	
	<td>Id: </td>
	<td><input type="text" name="id"/><br/></td>
	</tr>
	
	<tr>	
	<td>Password: </td>
	<td><input type="password" name="password"/><br/></td>
	</tr>
	
	<tr>	
	<td>Contact No: </td>
	<td><input type="text" name="contact_no"/><br/></td>
	</tr>
	
	<tr>	
	<td>Password: </td>
	<td><input type="text" name="email_id"/><br/></td>
	</tr>
	
	<!--  
	<tr>
	<td>DOB: </td>
	<td><input type="date" name="age"/><br></td>
	</tr>
	
	<tr>
	<td>First Name: </td>
	<td><input type="text" name="fn"/><br/></td>
	</tr>
	
	<tr>
	<td>Last Name: <br/></td>
	<td> <input type="text" name="ln"/> </td>
	</tr>
	
	<tr>
	<td>Hobbies: <br/></td>
	<td><input type="text" name="hobbies"/></td>
	</tr>
	
	<tr>
	<td>Gender: </td>
	<td> <input type="radio" name="gen" value="male">Male </input> <br/>  <input type="radio" name="gen" value="female">Female </input> <br/></td>
	</tr>
	-->
	
	<tr>
	<td><input type="submit" value="Add User"/><br/></td>
	<tr><td>Already have an account?<a href="login.jsp"><button>Login</button></a><td><tr>
	</tr>
		
	
 	  </table>
 	  
 	  
	</form>
	
	</div>
	
	
</body></html>
 