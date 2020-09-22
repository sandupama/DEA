<%-- 
    Document   : edituser
    Created on : Jun 17, 2019, 2:10:28 PM
    Author     : Sadupama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
]
<%@page import="com.hotel.dao.UserDao"%>  
<jsp:useBean id="u" class="com.hotel.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  