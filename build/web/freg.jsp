<%-- 
    Document   : freg
    Created on : Jun 16, 2019, 11:24:34 AM
    Author     : Sadupama
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>User Data</title>
</head>
<style>
    div.ex {
        text-align: right;
        width: 300px;
        padding: 10px;
        border: 5px solid grey;
        margin: 0px
    }
</style>
<body>
<h1>Registration Form</h1>
<div class="ex">
    <form action="sucf.jsp" method="post">
        <table style="with: 50%">
            <tr>
                <td>Full Name</td>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="userName"/></td>
            </tr>
           
            <tr>
                <td>Country</td>
                <td><input type="text" name="country"/></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="text" name=contact"/></td>
            </tr>
            
            <tr>
                <td>Password</td>
                <td><input type="password" name="pass"/></td>
            </tr>
           
            
                
        </table>
        <input type="submit" value="register"/>
    </form>
    <br>

    
    

</div>
</body>
</html>
