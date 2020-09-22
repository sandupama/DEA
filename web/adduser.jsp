<%-- 
    Document   : adduser
    Created on : Jun 17, 2019, 1:50:02 PM
    Author     : Sadupama
--%>

<

<%@page import="com.hotel.dao.UserDao"%>  
<jsp:useBean id="u" class="com.hotel.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  