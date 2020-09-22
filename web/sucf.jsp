<%-- 
    Document   : sucf
    Created on : Jun 16, 2019, 11:44:20 AM
    Author     : Sadupama
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Display</title>
    <style>
        table#nat {
            width: 50%;
            background-color: #c48ec5;
        }
    </style>
</head>
<body>
<%
    String name = request.getParameter("name");
    String username = request.getParameter("userName");
    String country = request.getParameter("country");
    String contact = request.getParameter("contact");
    String pass = request.getParameter("pass");
   
%>
<table id="nat">
    <tr>
        <td>Full Name</td>
        <td><%= name %>
        </td>
    </tr>
    <tr>
        <td>User Name</td>
        <td><%= username %>
        </td>
    </tr>
    <tr>
        <td>Country</td>
        <td><%= country %>
        </td>
    </tr>
    <tr>
        <td>contact</td>
        <td><%= contact %>
        </td>
    </tr>
   
</table>
        <a href="index_2.html"><h2> WELCOME SRI LANKA </h2></a>
</html>
