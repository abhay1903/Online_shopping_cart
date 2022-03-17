<%@page import="Project.ConnectionProvider" %>
    <%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>
<%@include file="changeDetailsHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"'");
while(rs.next())
{
%>
<h3>Name:<%=rs.getString(1) %> </h3>
<hr>
 <h3>Email:<%=rs.getString(2) %> </h3>
 <hr>
 <h3>Mobile Number:<%=rs.getString(3) %> </h3>
 <hr>
<h3>Security Question:<%=rs.getString(4) %> </h3>
<hr>
      <br>
      <br>
      <br>
<%}}
catch(Exception e)
{
	System.out.println(e);
}%>
</body>
</html>