<%-- 
    Document   : update
    Created on : Jun 5, 2019, 1:18:54 PM
    Author     : Sadupama
--%>

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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="updatehprocess.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
first_name:<br>
<input type="text" name="first_name" value="<%=resultSet.getString("first_name") %>">
<br>
hotel_name<br>
<input type="text" name="hotel_name" value="<%=resultSet.getString("hotel_name") %>">
<br>
room name:<br>
<input type="text" name="room_name" value="<%=resultSet.getString("room_name") %>">
<br>


Email Id:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
