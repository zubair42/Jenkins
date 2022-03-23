<%@ page language="java" contentType="text/html; charset=ISO-8859-1 "
    pageEncoding="ISO-8859-1" import="java.sql.*" %>

<html>

<head>
  <title>Registration</title>
<script type="text/javascript">
function validateForm()
{
var x=document.forms["myForm"]["txtUserName"].value
var y=document.forms["myForm"]["txtFirstName"].value
var z=document.forms["myForm"]["txtLastName"].value
var w=document.forms["myForm"]["pwdPasswordConf"].value
var v=document.forms["myForm"]["txtEmail"].value

if ((x==null || x=="" ) || (y==null || y=="" )||(z==null || z=="" )||(w==null || w=="" )||(v==null || v=="" ))
  {
  alert("please fill all information");
  return false;
  }
}
</script>
</head>

<body Background=>
<h2>User Registration</h2>

<form name="myForm" action="" onsubmit="return validateForm()" method="post">
<center>




    

<table>
  <tr>
    <td><label for="userName">User name:</label></td>
    <td><input type="text" name="txtUserName" size="20" id="userName" /></td>
  </tr>
  <tr>

    <td><label for="password">Password:</label></td>
    <td><input type="password" name="pwdPassword" size="20" id="password" /></td>
  </tr>
  <tr>
    <td><label for="confPassword">Confirm Password:</label></td>
    <td><input type="password" name="pwdPasswordConf" size="20" id="confPassword" /></td>
  </tr>
  <tr>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><label for="firstName">First name:</label></td>
    <td><input type="text" name="txtFirstName" size="20" id="firstName" /></td>
  </tr>
  <tr>

    <td><label for="lastName">Last name:</label></td>
    <td><input type="text" name="txtLastName" size="20" id="lastName" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>

    <td><label for="email">Email address:</label></td>
    <td><input type="text" name="txtEmail" size="20" id="email" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>

    <td>Gender:</td>
    <td><input type="radio" name="radSex" value="male" />Male</td>
  </tr>
  <tr>
    <td></td>
    <td><input type="radio" name="radSex" value="female" />Female</td>
  </tr>

  <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
</table>



<table>
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>

   
     </tr>

</table>



<input type="submit" value="Register now" />
</center>
</form>
<%
try{
String str1 = request.getParameter("txtUserName");
String str2 = request.getParameter("pwdPassword");
String str3 = request.getParameter("txtFirstName");
String str4 = request.getParameter("txtLastName");
String str5 = request.getParameter("txtEmail");
String str6 = request.getParameter("radSex");




	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver") ;
	Connection c = DriverManager.getConnection("jdbc:odbc:abc","root","root");
	Statement s = c.createStatement();
	Statement ss = c.createStatement();
	ss.execute("insert into player values('"+str1+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"')");
	
	
	 }catch(Exception e){
	out.println(e); }  
%>
</body>

</html>

 