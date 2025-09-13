<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Carts</title>
<style>
    .pc {
        display: flex;
        padding: 10px;
        border: 1px solid black;
        border-radius: 10px;
        margin: 20px;
        width: 400px;
        background-color:pink;
        
    }
    .product img {
        width: 100px;
        height:100px;
        border-radius: 5px;
        margin-right: 20px;
    }
</style>
</head>
<body>

<%
ArrayList<HashMap<String, String>> cart = 
    (ArrayList<HashMap<String, String>>) session.getAttribute("cart");

if (cart != null) {%>
    <%for (HashMap<String, String> product : cart) {
%>

<div class="pc">
    <div class="product">
        <img src="<%= product.get("image") %>" alt="Product Image">
    </div>
    <div>
        <h3><%= product.get("name") %></h3>
        <p>₹<%= product.get("price") %></p>
    </div>
</div>

<%
    }%>
<%} else {
%>
<%out.println("<h1>Your Cart is Empty!! Please add Something....</h1>") ;%>
<%
}
%>

</body>
</html>
