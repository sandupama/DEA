<%-- 
    Document   : update-process
    Created on : Jun 5, 2019, 1:20:20 PM
    Author     : Sadupama
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/n";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String user_id=request.getParameter("user_id");
String pwd=request.getParameter("pwd");
String name=request.getParameter("name");
String email=request.getParameter("email");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update userinfo set id=?,user_id=?,pwd=?,name=?,email=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, user_id);
ps.setString(3, pwd);
ps.setString(4, name);
ps.setString(5, email);
int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("alink.jsp");
}
else
{
out.print("There is a problem in updating Record.");
response.sendRedirect("index.jsp");
        
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
