<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
 /* String username = null , sessionId = null;
if(request.getSession().getAttribute("userName")==null){
	response.sendRedirect("login.jsp");
}else{
	username = request.getSession().getAttribute("userName").toString();
	sessionId =request.getSession().getId();
	
}


 */
String sessionID = request.getSession().getId();

%>


<%= sessionID  %><br/>
</body>
</html>