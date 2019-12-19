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

		<form action="${pageContext.request.contextPath}/viewItem"
			method="post">
			<div>
				<br> <br> <br> <br> <br>
				<h1>View Items</h1>
				<br>
				<div class="text-align-right">

					<a class="btn btn-primary"
						href="${pageContext.request.contextPath}menu.jsp"
						role="button">Add Item</a>
				</div>
				<br>

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
								<td><a class="btn btn-primary"
									href="${pageContext.request.contextPath}/deleteItem?id=${item.itemId}">
										<i Delete class="fa fa-trash"></i>
								</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
				 <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/main.jsp">Back</a>
		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>

</html>

