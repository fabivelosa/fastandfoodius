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

		<form action="${pageContext.request.contextPath}/viewordersdelivered"
			method="post">
			<div>
				<br> <br> <br> <br> <br>
				<h1>View Orders Delivered</h1>
				<br> <br>

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Order ID</th>
							<th>Delivery Status</th>
							<th>Delivered By</th>
							<th>When Delivered</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="order" items="${viewordersdelivered}">
							<tr>
								<td>${order.order_ID}</td>
								<td>${order.deliveryStatus}</td>
								<td>${order.deliveredby}</td>
								<td>${order.whenDelivered}</td>
							</tr>
						</c:forEach>
						<c:forEach var="delivery" items="${assigndelivery}">
							<option value="${delivery.email}">${delivery.firstName}</option>
						</c:forEach>

					</tbody>
				</table>
				
				 <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/main.jsp">Back</a>
			</div>

		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>

</html>


