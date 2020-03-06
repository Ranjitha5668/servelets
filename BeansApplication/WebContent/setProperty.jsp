<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Setproprerty</title>
</head>
<body>
<jsp:useBean id="user"  class="org.User" scope = "session"></jsp:useBean>

<form action="getProperty.jsp" method="post">
First Name:<input type="text" name = "firstName" value = '<jsp:getProperty property = "firstName" name="user"/>'><br/>
Last Name:<input type="text" name = "lastName" value = '<jsp:getProperty property = "lastName" name="user"/>'><br/>
<input type="submit" value="submit">
</form>
</body>
</html>