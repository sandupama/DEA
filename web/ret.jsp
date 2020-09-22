<%-- 
    Document   : ret
    Created on : Jun 16, 2019, 5:41:55 PM
    Author     : Sadupama
--%>

<%-- 
    Document   : index
    Created on : Jun 5, 2019, 1:15:21 PM
    Author     : Sadupama
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "n";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
<h1>Register person Who visit HOTEL& TRAVEL</h1>
<table border="1">
<tr>
<td>id</td>
<td>user_id </td>
<td>pwd</td>
<td> name</td>
<td>email</td><td>update</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from userinfo";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr><td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("user_id") %></td>
<td><%=resultSet.getString("pwd") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>

<td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>


