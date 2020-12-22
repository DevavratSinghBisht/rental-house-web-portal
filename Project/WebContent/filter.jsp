<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<style>
    body{
    background-image: url("Background.png");
    }
    </style>
    

<div align="center"><%
String id = request.getParameter("userId");
String driverName = "org.mariadb.jdbc.Driver";
String connectionUrl = "jdbc:mariadb://localhost:3306/";
String dbName = "renthome";
String userId = "root";
String password = "root";
String location = request.getParameter("location");
String deposit = request.getParameter("deposit");
String rent = request.getParameter("rent");
String duration = request.getParameter("duration");
String s_area = request.getParameter("s_area");

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<h2 align="center"><font><strong> All Available Houses</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Location</b></td>
<td><b>Deposit</b></td>
<td><b>Rent</b></td>
<td><b>Duration</b></td>
<td><b>Surface Area</b></td>
<td><b>Details</b></td>
<td><b>Owner's Name</b></td>
<td><b>Contact No</b></td>
<td><b>E-mail ID</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

resultSet = statement.executeQuery("SELECT location,deposit,rent,duration,s_area,details,owner,contact_no,email_id FROM home where location = '"+location+"' or deposit = '"+deposit+"' or  rent= '"+rent+"'  or duration = '"+duration+"' or s_area = '"+s_area+"'");
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("deposit") %></td>
<td><%=resultSet.getString("rent") %></td>
<td><%=resultSet.getString("duration") %></td>
<td><%=resultSet.getString("s_area") %></td>
<td><%=resultSet.getString("details") %></td>
<td><%=resultSet.getString("owner") %></td>
<td><%=resultSet.getString("contact_no") %></td>
<td><%=resultSet.getString("email_id") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


</div>
