<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="/WEB-INF/tld/displaytag.tld" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
#formbuttons {
	display: block;
	height: 25px;
}

.buttonstrip {
	width: 30%;
	background-color: #A8BFC9;
}

div.styled {
  border-width:1px;
  border-color:black;
  border-style: solid solid solid solid;
  width:500px;
  }

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<script type="text/javascript">

function checkform()
{ 
var username=document.login.username.value;
var password=document.login.password.value
	if (username == "" && password == "") {
		alert("UserName and Password must be filled out" );
		document.login.username.focus();
		return false;
	}
	
	if (username != "" && password == "") {
		alert("Password must be filled out");
		document.login.password.focus();
		return false;
	}
	if (username == "" && password != "") {
		alert("UserName must be filled out");
		document.login.username.focus();
		return false;
	}
return true;
}
</script> 
</head>
<body>
    <center>
<div  class="formbuttons" align="center" >
<div align="center" class="buttonstrip">
<h3>Login</h3>
</div>
</div>	
<div style="color:red"><c:out value="${errorMessage}" /></div> 
<FORM name=login ACTION = "LoginValidateServlet" METHOD ="POST" onSubmit="return checkform()" >      
Username: <INPUT TYPE = "TEXT" NAME = "username"><br>  <br>    
Password: <INPUT TYPE = "PASSWORD" NAME = "password"><br>   <br>       
<INPUT TYPE = "SUBMIT" VALUE = "Login">      
</FORM>
<br>
<div  class="formbuttons" align="center" >
<div align="center" class="buttonstrip">
<br>

</div>
</div>	
    </center>
</body>
</html>