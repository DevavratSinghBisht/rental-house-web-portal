<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body{
background-image: url("House.jpg");
}
p{
font-color: white;
}
input[type=text]:focus{
  background-color:lightblue;
  
}
</style>
<title>Insert title here</title>
</head>
<body>

<div align="center">
<h1 style="color:white" >Online Rental Home Portal</h1>
<br/><br><br>

 <form action="index.jsp" method="post">
	 <input type="text" name="login" placeholder="Username" /></p><br/>
	 <input type="password" name="password" placeholder="Password" /></p><br/>
	<input type="submit" value="Login" /><br/><br/>
</form>

<form action="signup.jsp" method="post">
	<input type="submit" value="Signup"><br/><br/>
</form>
	</div>
	
</body>
</html>