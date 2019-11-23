<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<div>
				<br> <br> <br> <br> <br>
				<h1>View Items</h1>

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id Item</th>
							<th>Description</th>
							<th>Category Id</th>
							<th>Price</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}">
							<tr>
								<td>${item.itemId}</td>
								<td>${item.itemDescr}</td>
								<td>${item.categoryId}</td>
								<td>${item.price}</td>
								<td>
									<button class="btn">
										<i class="fa fa-trash"></i>
									</button>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Add Item</button>
			</div>
		</form>
	</div>





	<%@include file="../includes/footer.jsp"%>
</body>


</html>

