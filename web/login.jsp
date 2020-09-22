<%-- 
    Document   : login
    Created on : Jun 15, 2019, 3:44:03 PM
    Author     : Sadupama
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name"); 
session.putValue("name",name); 
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/n","root","");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from userinfo where name='"+name+"' and pwd='"+pwd+"'"); 
try{
rs.next();
if(rs.getString("pwd").equals(pwd)&&rs.getString("name").equals(name)) 
{ 
response.sendRedirect("welcome.jsp");

} 
else{
out.println("Invalid password or name.");
response.sendRedirect("in.jsp");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
