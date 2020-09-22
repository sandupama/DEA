<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("first_name");
String hotel_name=request.getParameter("hotel_name");
String room_name=request.getParameter("room_name");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/n", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(first_name,hotel_name,room_name,email)values('"+first_name+"','"+hotel_name+"','"+room_name+"','"+email+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
