<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
</head>
<style>
.allcontainers{
display:flex;
flex-wrap:wrap;
flex-direction:row;
background-color:skyblue;
border-radius:8px;
gap:20px;
}
.product-container {
            display: flex;
            padding: 20px;
            border: 1px solid black;
            margin: 20px;
            border-radius: 10px;
            width: fit-content;
            background-color:bisque;
        }
        .product-image {
            width: 150px;
            height: 150px;
            margin-right: 20px;
        }
        .product-info {
            display: flex;
            flex-direction: column;
            border:0.5px solid black;
        }
        .product-button {
            margin-top: 20px;
            padding: 10px;
            background-color: green;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
</style>
<body>
<%
out.println("<h1>Welcome Customer!...</h1>");
%>
<div class="allcontainers">
<div class="product-container">
    <img class="product-image" src="images/lapi.jpeg" alt="Product Image">
    <div class="product-info">
        <h2>HP Laptop</h2>
        <p>₹50000 - Amazing quality product just for you!</p>
        <form action="addcart.jsp" method="post">
    <input type="hidden" name="name" value="Laptop" />
    <input type="hidden" name="price" value="999" />
    <input type="hidden" name="image" value="images/lapi.jpeg" />
    <button type="submit" class="product-button">Add to Cart</button>
</form>
    </div>
</div>
<div class="product-container">
    <img class="product-image" src="images/mobile.jpeg" alt="Product Image">
    <div class="product-info">
        <h2>Redmi Mobile</h2>
        <p>₹8000 - Amazing quality product just for you!</p>
        <form action="addcart.jsp" method="post">
    <input type="hidden" name="name" value="Mobile" />
    <input type="hidden" name="price" value="999" />
    <input type="hidden" name="image" value="images/mobile.jpeg" />
    <button type="submit" class="product-button">Add to Cart</button>
</form>
    </div>
</div>
<div class="product-container">
    <img class="product-image" src="images/mobile1.jpeg" alt="Product Image">
    <div class="product-info">
        <h2>SAMSUNG Mobile</h2>
        <p>₹10000 - Amazing quality product just for you!</p>
        <form action="addcart.jsp" method="post">
    <input type="hidden" name="name" value="Laptop" />
    <input type="hidden" name="price" value="999" />
    <input type="hidden" name="image" value="images/mobile1.jpeg" />
    <button type="submit" class="product-button">Add to Cart</button>
</form>
</div>
    </div>
    <div class="product-container">
    <img class="product-image" src="images/lapi3.jpeg" alt="Product Image">
    <div class="product-info">
        <h2> Lenovo Laptop</h2>
        <p>₹60000 - Amazing quality product just for you!</p>
        <form action="addcart.jsp" method="post">
    <input type="hidden" name="name" value="Laptop" />
    <input type="hidden" name="price" value="999" />
    <input type="hidden" name="image" value="images/mobile1.jpeg" />
    <button type="submit" class="product-button">Add to Cart</button>
</form>
    </div>
</div>
</body>
</html>
