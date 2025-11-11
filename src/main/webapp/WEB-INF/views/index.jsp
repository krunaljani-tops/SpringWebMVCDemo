<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="./header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Home Page</title>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-4">Welcome to the Product Management
					System</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="product" items="${products}">
						<tr>
							<th scope="row">${product.id }</th>
							<td>${product.name }</td>
							<td>${product.description }</td>
							<td>${product.price }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
				<a href="addProduct" class="btn btn-outline-success">Add New Product</a>
				</div>
			</div>

		</div>
</body>
</html>
