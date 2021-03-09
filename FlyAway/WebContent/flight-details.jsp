<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="com.utility.*" %>
   <%@ page import="com.entity.*" %>
   <%@ page import="java.util.*" %>
   <%@ page import="org.hibernate.*;" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightyellow">
 <table>
 <tr>
 <th>Flight</th>
 <th>Source</th>
 <th>Destination</th>
 <th>Airline</th>
 <th>Ticket Price</th>
 </tr>
<%
Session ses=HiberanteUtlity.getSession();
List<Flights> fdetails=ses.createQuery("from Flights").list();
List<Airlines> bdetails=ses.createQuery("from Airlines").list();
for(Flights f:fdetails){
	out.print("<tr>");
	out.print("<td>"+f.getSource()+"</td>");
	out.print("<td>"+f.getDestination()+"</td>");
	out.print("</tr>");
}


%>
</table>
</body>
</html>