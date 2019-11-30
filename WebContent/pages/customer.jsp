<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<form action="${pageContext.request.contextPath}/customer"
			method="post">
			<div>
				<br> <br> <br> <br> <br>
				<h1>Choose a customer </h1>
				<br>
				<br>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Customer ID</th>
							<th>Name</th>
							<th>Gender</th>
							<th>Date of Birth</th>
							<th>Address</th>
							<th>City</th>
							<th>Postal Code</th>
							<th>Email Address</th>
							<th>Phone Number</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="customer" items="${customerList}">
							<tr>
								<td>${customer.id}</td>
								<td>${customer.firstName}</td>
								<td>${customer.gender}</td>
								<td>${customer.dateofbirth}</td>
								<td>${customer.address}</td>
								<td>${customer.city}</td>
								<td>${customer.postalCode}</td>
								<td>${customer.email}</td>
								<td>${customer.phone}</td>
								<td> <a class="btn btn-primary"
									href="${pageContext.request.contextPath}/menu?id=${customer.id}">
										<i class="fa fa-plus-square"></i>
								</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>

		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>

</html>