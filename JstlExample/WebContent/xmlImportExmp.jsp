<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib prefix = "x" 
   uri = "http://java.sun.com/jsp/jstl/xml" %>
   <%@ taglib prefix = "fn" 
   uri = "http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="/users.xml" var="XMLfile"/>
<x:parse xml="${XMLfile}" var="XMLdoc"/>
<%-- Name: <x:out select="$XMLdoc/user/use[3]/name"/>
<br/>Gender: <x:out select="$XMLdoc/user/use[1]/gender"/>
<br/>Age: <x:out select="$XMLdoc/user/use[4]/age"/>
 --%>
 
 <table border=1>
 <x:forEach select="$XMLdoc/user/use">
 <tr>
 <x:if select="age > 20">
 <td> <x:out select="name"/></td>
 <td> <x:out select="gender"/></td>
 <td> <x:out select="age"/></td>
 </x:if>
 </tr>
</x:forEach>
 
 
 
 
 </table>
</body>
</html>