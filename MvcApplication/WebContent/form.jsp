<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/Controller" method=get">
		Full Name: <input type="text" name="name" required /><br /> Gender:
		<input type="radio" name="gender" value="male" checked="checked">Male
		<input type="radio" name="gender" value="female">Female<br />

		Languages Know: <input type="checkbox" name="language" value="engilsh">English
		<input type="checkbox" name="language" value="hindi">Hindi <input
			type="checkbox" name="language" value="kannada">Kannada<br />
		Country: <select name="country">
			<option value="India">India</option>
			<option value="USA">USA</option>
			<option value="UK">UK</option>
			<option value="Finland">Finland</option>
			<option value="canada">Canada</option>
		</select><br /> <input type="submit" value="submit" />
	</form>
</body>
</html>