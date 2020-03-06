<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix = "x" 
   uri = "http://java.sun.com/jsp/jstl/xml" %>
    <%@ taglib prefix = "fn" 
   uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Veiw website in:
<a href="?locale=en_US">English(US)</a>
<a href="?locale=hi_IN">Hindi</a>
<a href="?locale=it_CH">Italian</a>
<a href="?locale=ro_RO">Romanian</a>
<a href="?locale=zh">Chinese</a>
<br/>
<br/>
<fmt:setLocale value="${param.locale}"/>

<fmt:bundle basename="i18n/website">
<p><fmt:message key="label.hello"/> john,
<p><fmt:message key="label.welcome"/>
<p><fmt:message key="label.message"/>
<p><fmt:message key="label.thank"/>
</fmt:bundle>
<br/>
Locale: ${param.locale}
</body>
</html>