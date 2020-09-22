<%-- 
    Document   : radioForm
    Created on : Jun 17, 2019, 11:08:57 AM
    Author     : Sadupama
--%>




<%@page import="java.util.*"%>
<html>
<form method="post" action="feedback.jsp">
<table>
<%
int i=0;
ArrayList list=new ArrayList();
list.add("How would you rate activities to your friends?");
list.add("How much help was our website? ");
list.add("Interesting?");
list.add("Activitie material sufficient?");
list.add("Challenging?");
Iterator itr;

for(itr=list.iterator(); itr.hasNext();){
String ans=itr.next().toString();

%>
<tr><td><%=ans%></td><td><input type="hidden" name="question<%=i%>" value="<%=ans%>" ></td>
<td><input type="hidden" name="quid<%=i%>" value="<%=i%>"></td><td><input type="radio" value="Poor" name="radio<%=i%>"/>Poor</td><td><input type="radio" value="Average" name="radio<%=i%>"/>Average</td><td><input type="radio" value="Good" name="radio<%=i%>"/>Good</td></tr>
<% i++;
}
%>
<tr><td><input type="Submit" value="Submit"></td></tr>
</table>
</form>
</html>
