<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../includes/header.jsp"%>

<head>

</head>

<body id="page-top">
	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp"%>

	<header class="masthead_internal"> </header>

	<div class="container">

		<form action="${pageContext.request.contextPath}/addItem"
			method="post">
			<br> <br> <br> <br> <br>
			<div>
				<h1>Item</h1>
			</div>

			<div class="form-group">
				<label for="inputDescription">Description</label> <input type="text"
					name="inputDescription" class="form-control" id="inputDescription"
					placeholder="Please enter description">
			</div>
			<div>
				<label for="category">Category</label> <select name="category"
					class="form-control form-control">
					<option>Please choose category</option>
					<option value="201">Starter</option>
					<option value="202">Side Dish</option>
					<option value="203">Main Course</option>
					<option value="204">Drink</option>
					<option value="205">Dessert</option>
				</select>
			</div>

			<div class="form-group">
				<label for="inputPrice">Price</label> <input type="text"
					name="inputPrice" class="form-control" id="inputPrice"
					placeholder="Please enter price">
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Add Item</button>
			</div>
			 <a class="btn btn-primary" href="${pageContext.request.contextPath}main.jsp">Back</a>
		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>

</html>