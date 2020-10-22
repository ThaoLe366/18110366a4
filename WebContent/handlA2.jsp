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
<div id="getNumber">
<h2>
Thank you for your order of 	
</h2>

<br>
<table>
<tr>
<td>Category</td>
<td>Quantity</td>
<td>Size</td>
<td>Price</td>
<td>Total</td>
</tr>
<tr>
<td> <%= request.getParameter("category") %> </td>
<td><%= request.getParameter("quantity")%></td>
<td><%= request.getParameter("sizeCloth") %></td>
<td>2</td>

<td><%= request.getAttribute("totalCost") %> </td>
</tr>
</table>

<% String isPrint= request.getParameter("bill");
if (isPrint != null) {
%>  <br>
 <h4>
You will receive bill through Email: <%= request.getParameter("gmailUser")  %><% 
}%></h4> 
</div>
</body>
</html>