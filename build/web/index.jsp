<%-- 
    Document   : index
    Created on : Jun 15, 2019, 11:52:42 PM
    Author     : Sadupama
--%>

<%-- 
    Document   : retrive
    Created on : Jun 15, 2019, 1:13:52 PM
    Author     : Sadupama
--%>




<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
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
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>user_id</b></td>
<td><b>Password</b></td>
<td><b>Name</b></td>
<td><b>Email</b></td>
<td>update</td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM userinfo";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="#A52A2A">
<td><b><%=resultSet.getString("id") %></b></td>
<td><b><%=resultSet.getString("user_id") %></b></td>
<td><b><%=resultSet.getString("pwd") %></b></td>
<td><b><%=resultSet.getString("name") %></b></td>
<td><b><%=resultSet.getString("email") %></b></td>
</tr>
<td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
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
