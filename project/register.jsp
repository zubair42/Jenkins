<%@ page language="java" contentType="text/html; charset=ISO-8859-1 "
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title></title>
<script type="text/javascript">
function validateForm()
{
var x=document.forms["myForm"]["txtUserName1"].value
var y=document.forms["myForm"]["pwdPassword1"].value
var z=document.forms["myForm"]["txtLastName2"].value
var w=document.forms["myForm"]["pwdPassword2"].value


if ((x==null || x=="" ) || (y==null || y=="" )||(z==null || z=="" )||(w==null || w=="" ))
  {
  alert("please fill all information");
  return false;
  }
  else
  window.open(targeturl,"","fullscreen,scrollbars")
  
}
</script>
<script>
function fullwin(targeturl) {
window.open(targeturl,"","fullscreen,scrollbars")
}
</script>
</head>

<body Background=>
<CENTER>
<h2>USER LOGIN</h2>

<form name="myForm" action="" onsubmit="return validateForm()" method="post">
<center>



<h1>player1</h1>
    

<table>
  <tr>
    <td><label for="userName">User name:</label></td>
    <td><input type="text" name="txtUserName1" size="20" id="userName" /></td>
  </tr>
  <tr>

    <td><label for="password">Password:</label></td>
    <td><input type="password" name="pwdPassword1" size="20" id="password" /></td>
  </tr>
  
  
</table>




<h1>player2</h1>





<table>
  <tr>
    <td><label for="userName">User name:</label></td>
    <td><input type="text" name="txtUserName2" size="20" id="userName" /></td>
  </tr>
  <tr>

    <td><label for="password">Password:</label></td>
    <td><input type="password" name="pwdPassword2" size="20" id="password" /></td>
  </tr>
  
 <tr><td>&nbsp;</td>
    <td>&nbsp;</td></tr> 
</table>

<table>
 <tr><td>&nbsp;</td>
    <td>&nbsp;</td></tr> 
</table>





<input type="submit" value="Enter" />
</center>
</form>

<%
try{
String str1 = request.getParameter("txtUserName1");
String str2 = request.getParameter("pwdPassword1");
String str3 = request.getParameter("txtUserName2");
String str4 = request.getParameter("pwdPassword2");






	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver") ;
	Connection c = DriverManager.getConnection("jdbc:odbc:abc","root","root");
	Statement s = c.createStatement();
	Statement ss = c.createStatement();
	ResultSet rs1= s.executeQuery("select password FROM player WHERE username = \'"+str1+"\'");
	
	ResultSet rs2= ss.executeQuery("select password FROM player WHERE username = \'"+str3+"\'");
	
	  rs1.next();
	 String s1 = rs1.getString(	1);
	 
	 rs2.next();
	 String s2 = rs2.getString(1);
	 
	
	if((s1.compareTo(str2)==0) && (s2.compareTo(str4)==0 ) )
		 
	 {
		( response.getWriter()).println("Login Succesfully!!"); 
		
		%>
		
		
		<jsp:forward page="appl.jsp">
  		<jsp:param name="sa" value="<%=str1%>"/>
  		<jsp:param name="sb" value="<%=str3%>"/>
		</jsp:forward>	
		<jsp:forward page="final.jsp">
  		<jsp:param name="sa" value="<%=str1%>"/>
  		<jsp:param name="sb" value="<%=str3%>"/>
		</jsp:forward>	
	 	<% }
	 }catch(Exception e){
	out.println(e); }  
%>


</body>

</html>