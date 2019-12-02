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

		<form action="${pageContext.request.contextPath}/vieworders"
			method="post">
			<div>
				<br> <br> <br> <br> <br>
				<h1>View Orders</h1>
				<br>
				
				<br>

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Order ID</th>
							<th>Order Address</th>
							<th>City</th>
							<th>Required Delivery Date</th>
							<th>Delivery Status</th>
							<th>Payment Status</th>
							<th>Phone</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="order" items="${vieworders}">
							<tr>
								<td>${order.order_ID}</td>
								<td>${order.orderAddress}</td>
								<td>${order.orderCity}</td>
								<td>${order.requiredDeliveryDate}</td>
								<td>${order.deliveryStatus}</td>
								<td>${order.paymentStatus}</td>
								<td>${order.orderPhoneNumber}</td>
								<td><button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
							  	  			<i class="fa fa-motorcycle"></i>
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

