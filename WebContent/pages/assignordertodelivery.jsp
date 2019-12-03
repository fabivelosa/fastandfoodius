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


		<div>
			<br> <br> <br> <br> <br>
			<h1>Assign Order to Delivery</h1>
			<br> <a class="btn btn-primary"
				href="${pageContext.request.contextPath}/pages/viewpendingorders.jsp"
				role="button">Save</a>
		</div>
		<br> <br>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Order ID</th>
					<th>Order Address</th>
					<th>City</th>
					<th>Postal Code</th>
					<th>Phone Number</th>
					<th>Required Delivery Date</th>
					<th>Payment Status</th>
					<th>Delivery Status</th>
					<th style="width: 10%">Driver</th>
					<th>Assign</th>

				</tr>
			</thead>
			<tbody>

				<c:forEach var="order" items="${viewpendingorders}">

					<form action="${pageContext.request.contextPath}/viewpendingorders"
						method="post">
						<input type="hidden" name="order_id" value="${order.order_ID}" />

						<tr>
							<td>${order.order_ID}</td>
							<td>${order.orderAddress}</td>
							<td>${order.orderCity}</td>
							<td>${order.orderPostalCode}</td>
							<td>${order.orderPhoneNumber}</td>
							<td>${order.requiredDeliveryDate}</td>
							<td>${order.paymentStatus}</td>
							<td>${order.deliveryStatus}</td>
							<td><select name="person_id"
								class="form-control form-control">
									<c:forEach var="delivery" items="${assigndelivery}">
										<option value="${delivery.id}">${delivery.firstName}</option>
									</c:forEach>
							</select></td>
							<td>
								<button type="submit" class="btn btn-primary">
									<i class="fas fa-motorcycle"></i>
								</button>
							</td>
						</tr>

					</form>

				</c:forEach>
			</tbody>
			<tbody>

			</tbody>

		</table>
	</div>


	<%@include file="../includes/footer.jsp"%>
</body>

</html>

