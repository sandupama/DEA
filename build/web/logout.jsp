<%-- 
    Document   : logout
    Created on : Jun 15, 2019, 3:47:53 PM
    Author     : Sadupama
--%>

<%
session.setAttribute("user_id", null);
session.invalidate();
response.sendRedirect("registration.jsp");
%>
