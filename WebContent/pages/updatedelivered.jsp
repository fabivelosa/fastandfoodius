<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<%@ page session="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

		<form action="${pageContext.request.contextPath}/updatedelivered"
			method="post">
			<div>
				<br> <br> <br><br><br>

				<h1>Delivery Details</h1>
			</div>
			<div class="form-row">
				
				
			</div>
			<div class="form-group">
				<label for="inputDateOfBirth">Delivered on</label> <input
					type="text" name="inputDateOfBirth" class="form-control"
					id="inputDateOfBirth" placeholder="day/month/year">
			</div>
			<div>
			    <label for="title">Payment Status</label>
						<select name="title" class="form-control form-control">
							<option value="cash">Payed-On-Delivery</option>
						    <option value="card">Not paid</option>
						</select>
			</div>
			<br>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>


</html>

