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
						<c:forEach var="customer" items="${cutomer}">
							<tr>
								<td>${customer.customer_ID}</td>
								<td>${customer.firstName}</td>
								<td>${customer.gender}</td>
								<td>${customer.dateofbirth}</td>
								<td>${customer.orderAddress}</td>
								<td>${customer.orderCity}</td>
								<td>${customer.orderPostalCode}</td>
								<td>${customer.orderEmailAddress}</td>
								<td>${customer.orderPhoneNumber}</td>
								<td><button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
								  	<i class="fa fa-cart-plus"></i>
								</button></td>
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