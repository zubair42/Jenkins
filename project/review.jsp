<%@ page language="java" contentType="text/html; charset=ISO-8859-1 "
    pageEncoding="ISO-8859-1" import="java.sql.*" %>

<head>

<title>Review</title>
<style type="text/css">
.style1 {
	font-family: "Bell Gothic Std Black";
	font-size: x-large;
}
.style2 {
	font-family: "Bell Gothic Std Black";
}
.style3 {
	font-size: small;
}
.style4 {
	font-family: "Bell Gothic Std Black";
	font-size: small;
}
</style>
</head>


<html >

<body>

<p class="style1"><strong>User Reviews</strong></p>
<p class="style1">&nbsp;<span class="style2"><strong><span class="style3">Name&nbsp; </span>&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Text1" type="text" style="width: 234px; height: 23px" /></p>
<p class="style1"><strong><span class="style3">&nbsp; E-mail Id&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
<input name="Text2" type="text" style="width: 234px; height: 21px" /></p>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Text3" type="text" style="width: 358px; height: 140px" /></strong></p>
<p class="style4"><strong>&nbsp; Comment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="image" src="button80900965.png"value="Send" height="30" width="91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<strong>

<input type="image" src="button41440855.png" value="Reset" height="29" width="101"></p>
<% 
try{
String str1 = request.getParameter("Text1");
String str2 = request.getParameter("Text2");
String str3 = request.getParameter("Text3");





	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver") ;
	Connection c = DriverManager.getConnection("jdbc:odbc:abc","root","root");
	Statement s = c.createStatement();
	Statement ss = c.createStatement();
	ss.execute("insert into review values('"+str1+"','"+str2+"','"+str3+"')");
	
	
	 }catch(Exception e){
	out.println(e); }  
%>
</body>

</html>
