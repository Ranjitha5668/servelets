<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "fn" 
   uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${fn:trim("       study   well         .     everyday") }


<h1> EscapeXML Demo</h1>
${fn:escapeXml("<h1> Escape XML Dempo</h1>")}

<%-- <c:set var="We" value="mycompany.org"></c:set>

${fn:startsWith("mycompany.org","om")}
<br/>${fn:endsWith(We , "or") }
<br/>${fn:contains(We , "org") }
<br/>${fn:containsIgnoreCase("mycompany.org" , "comp") } --%>
</body>
</html>