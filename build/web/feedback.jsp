<%-- 
    Document   : feedback
    Created on : Jun 17, 2019, 11:12:16 AM
    Author     : Sadupama
--%>





<%@page import="java.sql.*"%>
<%
String id[]= new String[5];
for(int i=0;i<5;i++){
id[i]=request.getParameter("qid"+i);
System.out.println(id[i]);
}
String option[]= new String[5];
for(int i=0;i<5;i++){
option[i]=request.getParameter("radio"+i);
System.out.println(option[i]);
}
String ques[]= new String[5];
for(int i=0;i<5;i++){
ques[i]=request.getParameter("question"+i);
System.out.println(ques[i]);
} 
try{
Class.forName("com.mysql.jdbc.Driver"); 
Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/n","root","");
Statement st=conn.createStatement();
for(int j=0;j<5;j++){
String optionValue=option[j];
String qid=id[j];
String question=ques[j];
st.executeUpdate("insert into question(question,options) values('"+question+"','"+optionValue+"')");
}

out.println("Inserted Successfully");
response.sendRedirect("outweb.jsp");
}
catch(Exception e){
out.println(e);
}
%>
