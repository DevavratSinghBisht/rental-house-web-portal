package com.esd1.controller;

import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String contact_no = request.getParameter("contact_no");
		String email_id = request.getParameter("email_id");
		
		try {
			
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/renthome","root","root");
			Statement st = con.createStatement();
			int i = st.executeUpdate("insert into user(name,id,password,contact_no,email_id) values('"+name+"','"+id+"','"+password+"','"+contact_no+"','"+email_id+"')");
			
			if(i>0)
			{
				out.println("Registration Successful");
			}
			else
			{
				out.println("Registration Un-successful");
			}
			
			
		} catch (Exception e) {
			
			out.println("An error occured while signing up. Please try again.");
			
		}
		
	}

}
