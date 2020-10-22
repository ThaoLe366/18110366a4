<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<p> 

 <div id="getNumber">
<% String number= request.getParameter("quantity"); %>
		
	<h2> Thank you for your order of  <%=number %> widgets </h2>	
		
</div>
</body>
</html>