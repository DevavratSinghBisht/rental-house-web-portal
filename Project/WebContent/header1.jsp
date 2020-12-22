<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!-- Assignment Header -->
    
    <div align="right">
<% 
if(session.getAttribute("login")!=null){ %>
<%= "Hello " + session.getAttribute("login") %> 


<a href="login.jsp"> |Logout</a>


<% } else { %>
<%= "Please login to view contents." %>

<a href="login.jsp"> |Login</a>

<% } %>
<br/>


</div>

    
    
    