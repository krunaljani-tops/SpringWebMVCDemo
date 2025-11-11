<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Add Product</h4>
        </div>
        <div class="card-body">
            <form action="products" method="post"> <!-- adjust URL as needed -->
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control" id="name" name="name"
                           placeholder="Enter product name" required>
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3"
                              placeholder="Enter product description"></textarea>
                </div>

                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" id="price" name="price"
                           placeholder="Enter price" min="0" required>
                </div>

                <button type="submit" class="btn btn-success">Save Product</button>
                <a href="/products" class="btn btn-secondary ml-2">Cancel</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>