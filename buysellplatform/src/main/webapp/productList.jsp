<%@ page import="java.util.List" %>
<%@ page import="com.buysellplatform.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
   <!--  <link rel="stylesheet" type="text/css" href="styles.css"> -->
</head>
<body>
    <h1>Product List</h1>

    <!-- Debugging output -->
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        if (products == null) {
            out.println("No products attribute found.");
        } else if (products.isEmpty()) {
            out.println("No products available.");
        } else {
            for (Product product : products) { 
    %>
    <ul>
        <li>
            <a href="productDetails.jsp?id=<%= product.getId() %>">
                <%= product.getTitle() %> - $<%= product.getCurrentBidPrice() %>
            </a>
        </li>
    </ul>
    <%
            }
        }
    %>
    
    <!-- I Want to Sell Button -->
    <form action="sell.jsp" method="get">
        <button type="submit">I want to sell</button>
    </form>
</body>
</html>
