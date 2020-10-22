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
<%
String name = request.getParameter("customerName");
String email = request.getParameter("customerEmail");
String quantity = request.getParameter("quantity");
String totalCost = (String) request.getAttribute("totalCost");
String pricePerUnit = (String) request.getAttribute("pricePerUnit");
%>

<h1>Order Confirmation</h1>
<p> Thank you for your order of <%= quantity %> widgets, <%= name %></p>
<br>
<p> At $ <%=pricePerUnit %> , your bill will be $ <%= totalCost %></p>
<br>
<p> You will shortly receive an email confirmation at <%=email %></p>

</div>
</body>
</html>