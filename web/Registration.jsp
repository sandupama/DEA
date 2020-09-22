<%-- 
    Document   : Registration
    Created on : Jun 15, 2019, 12:50:14 PM
    Author     : Sadupama
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
String id = "";
String user_id = request.getParameter("user_name");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
if (!(user_id == null || user_id.isEmpty())) {

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "n";
String userId = "root";
String password = "";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();

String sql = "INSERT INTO userinfo (user_id,pwd,name,email) VALUES('"+ user_id + "','" + pwd + "','" + name + "','" + email + "')";
int flage = statement.executeUpdate(sql);
response.sendRedirect("in.jsp");
} catch (Exception e) {
e.printStackTrace();
}
}
%>
<html>
<head>
<head>
<title>jsp</title>
</head>
<form method="post" action="Registration.jsp">
<table>

<tr>
<td>user_id</td>
<td><input type=text name="user_name" size="35" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pwd" size="35" /></td>
</tr> 
<tr>
<td>name</td>
<td><input type="text" name="name" size="35" /></td>
</tr>
<tr>
<td>email</td>
<td><input type="text" name="email" size="35" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="insert" value="Save"></td>
</tr>
<tr>
                        <td colspan="2">Already registered!! <a href="in.jsp">Login Here</a></td>
                    </tr>
</table> 
</form>
</html>

