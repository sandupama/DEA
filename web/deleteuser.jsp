<%-- 
    Document   : deleteuser
    Created on : Jun 17, 2019, 2:11:54 PM
    Author     : Sadupama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.hotel.dao.UserDao"%>  
<jsp:useBean id="u" class="com.hotel.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  