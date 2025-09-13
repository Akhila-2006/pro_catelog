<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String price = request.getParameter("price");
String image = request.getParameter("image");

ArrayList<HashMap<String, String>> cart = 
    (ArrayList<HashMap<String, String>>) session.getAttribute("cart");

if (cart == null) {
    cart = new ArrayList<>();
}

HashMap<String, String> product = new HashMap<>();
product.put("name", name);
product.put("price", price);
product.put("image", image);

cart.add(product);

session.setAttribute("cart", cart);
%>
<%
out.println("<h1>Your product is successfully added to cart");
%>
<h2>Added to cart!</h2>
<a href="cart.jsp">Go to Cart</a><br><br>
<%out.println("Name: " + name + "<br>");
out.println("Price: " + price + "<br>");
 %>
</body>
</html>